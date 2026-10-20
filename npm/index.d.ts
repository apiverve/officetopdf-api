declare module '@apiverve/officetopdf' {
  export interface officetopdfOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface officetopdfResponse {
    status: string;
    error: string | null;
    data: OfficetoPDFData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface OfficetoPDFData {
      pdfName:     null | string;
      inputName:   null | string;
      inputFormat: null | string;
      pageCount:   number | null;
      landscape:   boolean | null;
      pageRanges:  null;
      size:        number | null;
      expires:     number | null;
      downloadURL: null | string;
  }

  export default class officetopdfWrapper {
    constructor(options: officetopdfOptions);

    execute(callback: (error: any, data: officetopdfResponse | null) => void): Promise<officetopdfResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: officetopdfResponse | null) => void): Promise<officetopdfResponse>;
    execute(query?: Record<string, any>): Promise<officetopdfResponse>;
  }
}
