<?php

namespace App\Http\Livewire;
use Livewire\Component;
use App\Models\Audiences;
use Livewire\WithPagination;

class Audience extends Component 
{
    public $data_audience, $name, $email, $source, $status, $note;
    public $updateMode = false;

    use WithPagination;

    public function render()
    {
        $this->data_audience = Audiences::all();
        return view('livewire.audience.audience');


        // return view('livewire.audience.audience', [
        //     'data_audience'  => Audiences::paginate(10),
        // ]);
    }
    private function resetInput()
    {
        $this->name = null;
        $this->email = null;
        $this->source = null;
        $this->status = null;
        $this->note = null;
    }
    public function store()
    {
            $this->validate([
                'name' => 'required',
                'email' => 'required|email',
                'source' => 'required',
                'status' => 'required',
                'note' => 'required'
            ]);
            Audiences::create([
            'name' => $this->name,
            'email' => $this->email,
            'source' => $this->source,
            'status' => $this->status,
            'note' => $this->note
        ]);     

        $this->resetInput();
    }
    public function edit($id)
    {
        $record = Audiences::findOrFail($id);
        $this->selected_id = $id;
        $this->name = $record->name;
        $this->email = $record->email;
        $this->source = $record->source;
        $this->status = $record->status;
        $this->note = $record->note;
        $this->updateMode = true;
    }
    public function update()
    {
        $this->validate([
            'name' => 'required',
            'email' => 'required|email',
            'source' => 'required',
            'status' => 'required',
            'note' => 'required'
        ]);
        if ($this->selected_id) {
            $record = Audiences::find($this->selected_id);
            $record->update([
                'name' => $this->name,
                'email' => $this->email,
                'source' => $this->source,
                'status' => $this->status,
                'note' => $this->note
            ]);
            $this->resetInput();
            $this->updateMode = false;
        }
    }
    public function destroy($id)
    {
        if ($id) {
            
            $record = Audiences::where('id', $id);
            $record->delete();

        }
    }

}
