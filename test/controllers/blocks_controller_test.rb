require "test_helper"

class BlocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @block = blocks(:one)
  end

  test "should get index" do
    get blocks_url, as: :json
    assert_response :success
  end

  test "should create block" do
    assert_difference("Block.count") do
      post blocks_url, params: { block: { additional_information: @block.additional_information, fee_id: @block.fee_id, latitude: @block.latitude, longitude: @block.longitude, neighborhood: @block.neighborhood, number: @block.number, street: @block.street, zip_code: @block.zip_code } }, as: :json
    end

    assert_response :created
  end

  test "should show block" do
    get block_url(@block), as: :json
    assert_response :success
  end

  test "should update block" do
    patch block_url(@block), params: { block: { additional_information: @block.additional_information, fee_id: @block.fee_id, latitude: @block.latitude, longitude: @block.longitude, neighborhood: @block.neighborhood, number: @block.number, street: @block.street, zip_code: @block.zip_code } }, as: :json
    assert_response :success
  end

  test "should destroy block" do
    assert_difference("Block.count", -1) do
      delete block_url(@block), as: :json
    end

    assert_response :no_content
  end
end
