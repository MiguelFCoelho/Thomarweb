require 'test_helper'

class BeaconsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beacon = beacons(:one)
  end

  test "should get index" do
    get beacons_url
    assert_response :success
  end

  test "should get new" do
    get new_beacon_url
    assert_response :success
  end

  test "should create beacon" do
    assert_difference('Beacon.count') do
      post beacons_url, params: { beacon: { battery: @beacon.battery, description: @beacon.description, image: @beacon.image, latitude: @beacon.latitude, longitude: @beacon.longitude, manufacturer: @beacon.manufacturer, uuid: @beacon.uuid } }
    end

    assert_redirected_to beacon_url(Beacon.last)
  end

  test "should show beacon" do
    get beacon_url(@beacon)
    assert_response :success
  end

  test "should get edit" do
    get edit_beacon_url(@beacon)
    assert_response :success
  end

  test "should update beacon" do
    patch beacon_url(@beacon), params: { beacon: { battery: @beacon.battery, description: @beacon.description, image: @beacon.image, latitude: @beacon.latitude, longitude: @beacon.longitude, manufacturer: @beacon.manufacturer, uuid: @beacon.uuid } }
    assert_redirected_to beacon_url(@beacon)
  end

  test "should destroy beacon" do
    assert_difference('Beacon.count', -1) do
      delete beacon_url(@beacon)
    end

    assert_redirected_to beacons_url
  end
end
