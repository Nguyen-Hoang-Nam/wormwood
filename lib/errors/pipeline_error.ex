defmodule WormwoodPipelineError do
  @moduledoc """
  An exception that is raised when Wormwood is called improperly
  """
  defexception [:reason]

  def message(exception) do
    case exception.reason do
      :missing_schema ->
        "Pipeline need to specific schema."
    end
  end
end
