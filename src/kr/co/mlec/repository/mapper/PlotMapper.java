package kr.co.mlec.repository.mapper;

import kr.co.mlec.repository.domain.Plot;

public interface PlotMapper {
	void insertPlot(Plot plot);
	Plot selectPlot(int movieNo);
}
