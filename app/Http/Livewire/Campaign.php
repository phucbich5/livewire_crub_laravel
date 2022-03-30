<?php

namespace App\Http\Livewire;

use App\Models\Campaigns;
use App\Models\Audiences;
use Livewire\Component;


class Campaign extends Component
{
    public $data_campaign, $name, $template, $audience, $status,$audience_for_campaign;
    public $updateCampaign = false;
    
    public function render()
    {
        $this->data_campaign = Campaigns::all();
        $this->audience_for_campaign = Audiences::all();
        return view('livewire.campaign.campaign');
    }
    private function resetInput()
    {
        $this->name = null;
        $this->template = null;
        $this->audience = null;
        $this->status = null;
    }
    public function store()
    {
           // $this->validate([
        //     'name' => 'required',
        //     'template' => 'required',
        //     'audience' => 'require',
        //     'status' => 'required'
        // ]);
            Campaigns::create([
            'name' => $this->name,
            'template' => $this->template,
            'audience' => $this->audience,
            'status' => $this->status,
        ]);
        $this->resetInput();
    }
    public function edit($id)
    {
        $record = Campaigns::findOrFail($id);
        $this->selected_id = $id;
        $this->name = $record->name;
        $this->template = $record->template;
        $this->audience = $record->audience;
        $this->status = $record->status;
        $this->updateCampaign = true;
    }
    public function update()
    {
        // $this->validate([
        //     'name' => 'required',
        //     'template' => 'required',
        //     'audience' => 'require',
        //     'status' => 'required'
        // ]);
        if ($this->selected_id) {
            $record = Campaigns::find($this->selected_id);
            $record->update([
                'name' => $this->name,
                'template' => $this->template,
                'audience' => $this->audience,
                'status' => $this->status,
            ]);
            $this->resetInput();
            $this->updateCampaign = false;
        }
    }
    public function destroy($id)
    {
        if ($id) {
            $record = Campaigns::where('id', $id);
            $record->delete();
        }
    }
}
