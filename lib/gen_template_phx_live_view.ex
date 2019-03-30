defmodule Mix.Gen.Template.PhxLiveView do

  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))

  use MixTemplates,
    name:       :phx_live_view,
    short_desc: "Template for Phoenix Live View Kickstart",
    source_dir: "../template"

  def clean_up(assigns) do
    extra_assets = Path.expand("#{source_dir}/../../extra/assets/")
    target_assets = Path.expand("#{assigns.target_subdir}/assets/")
    File.cp_r(extra_assets, target_assets) 
  end
end
