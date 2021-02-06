package cgv.mvc.model;

import java.sql.Blob;

public class Event_mainDTO {
	private int event_sq;
	private String event_kinds;
	private String event_name;
	private String event_sni;
	private String event_image;
	private String event_content;
	private String event_state;

	public int getEvent_sq() {
		return event_sq;
	}

	public void setEvent_sq(int event_sq) {
		this.event_sq = event_sq;
	}

	public String getEvent_kinds() {
		return event_kinds;
	}

	public void setEvent_kinds(String event_kinds) {
		this.event_kinds = event_kinds;
	}

	public String getEvent_name() {
		return event_name;
	}

	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}

	public String getEvent_sni() {
		return event_sni;
	}

	public void setEvent_sni(String event_sni) {
		this.event_sni = event_sni;
	}

	public String getEvent_image() {
		return event_image;
	}

	public void setEvent_image(String event_image) {
		this.event_image = event_image;
	}

	public String getEvent_content() {
		return event_content;
	}

	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}

	public String getEvent_state() {
		return event_state;
	}

	public void setEvent_state(String event_state) {
		this.event_state = event_state;
	}

}
