class Admins::PropertiesController < ApplicationController

  def index
  end

  def new
    @property = Property.new
    @property.images.new
    @prefectures = Prefecture.all
    @municipality_tokyo = Municipality.where(prefecture_id: 1).all
    @municipality_kanagawa = Municipality.where(prefecture_id: 2).all
    @municipality_chiba = Municipality.where(prefecture_id: 3).all
    @municipality_saitama = Municipality.where(prefecture_id: 4).all
    @municipality_ibaraki = Municipality.where(prefecture_id: 5).all
    @municipality_tochigi = Municipality.where(prefecture_id: 6).all
    @municipality_gunma = Municipality.where(prefecture_id: 7).all
    @line_tokyo = Line.where(prefecture_id: 1).all
    @line_kanagawa = Line.where(prefecture_id: 2).all
    @line_chiba = Line.where(prefecture_id: 3).all
    @line_saitama = Line.where(prefecture_id: 4).all
    @line_ibaraki = Line.where(prefecture_id: 5).all
    @line_tochigi = Line.where(prefecture_id: 6).all
    @line_gunma = Line.where(prefecture_id: 7).all
  end

  def create
    @property = Property.create(property_params)
    if @property.save
      redirect_to root_path
    else
      unless @property.images.present?
        @property.images.new
        render :new
      else
        render :new
      end
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def property_params
    params.require(:property).permit(:title,
                                     :rent,
                                     :deposit,
                                     :location_floor,
                                     :number_floor,
                                     :other_charge,
                                     :occupied_area,
                                     :plan_id,
                                     :minutes_foot_id,
                                     :age,
                                     :building_structure_id,
                                     :position_id,
                                     :condition_id,
                                     :kitchen_id,
                                     :bath_toilet_id,
                                     :security_id,
                                     :air_conditioning_id,
                                     :facility_id,
                                     :broadcast_id,
                                     :parking_id,
                                     :contract_period_id,
                                     :current_situation_id,
                                     :other_id,
                                     :delivery,
                                     :renewal_fee,
                                     {prefecture_ids: []},
                                     images_attributes: [:src, :_destroy, :id]
                                    ).merge(admin_id: current_admin.id)
  end

end
