.class public Lcom/bzbs/bean/NFCTag;
.super Ljava/lang/Object;
.source "NFCTag.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public ActionName:Ljava/lang/String;

.field public CheckIn_Latitude:Ljava/lang/Double;

.field public CheckIn_Longitude:Ljava/lang/Double;

.field public CheckIn_Message:Ljava/lang/String;

.field public CheckIn_PlaceID:Ljava/lang/String;

.field public MediaType:Ljava/lang/String;

.field public NFCWriteBack:Ljava/lang/String;

.field public NextNFCTag:Lcom/bzbs/bean/NFCTag;

.field public OpenApp_NameSpace:Ljava/lang/String;

.field public OpenUrl_Link:Ljava/lang/String;

.field public ReDeem_Auto:Z

.field public ReDeem_CampaignID:I

.field public ReDeem_WriteBack:Z

.field public Share_RequireForReDeem:Z

.field public Share_app_id:Ljava/lang/String;

.field public Share_caption:Ljava/lang/String;

.field public Share_description:Ljava/lang/String;

.field public Share_link:Ljava/lang/String;

.field public Share_name:Ljava/lang/String;

.field public Share_picture:Ljava/lang/String;

.field public Status_Message:Ljava/lang/String;

.field public objNFCResult:Lcom/bzbs/bean/NFCResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Status_Message:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_app_id:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_name:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_picture:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 24
    iput-boolean v2, p0, Lcom/bzbs/bean/NFCTag;->Share_RequireForReDeem:Z

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 32
    iput-boolean v2, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_Auto:Z

    .line 33
    iput-boolean v2, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->OpenUrl_Link:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->NFCWriteBack:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    .line 43
    iput-object v1, p0, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    .line 89
    iput-object p1, p0, Lcom/bzbs/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    .line 92
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "redeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 93
    const-string/jumbo v0, "ReDeem"

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 94
    iget v0, p2, Lcom/bzbs/bean/NFCPlan;->CampaignId:I

    iput v0, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_CampaignID:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_Auto:Z

    .line 96
    iput-boolean v2, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 133
    :cond_78
    :goto_78
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_86

    .line 134
    invoke-virtual {p0, p1, p2, p4}, Lcom/bzbs/bean/NFCTag;->parseNextNFCTag(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Ljava/lang/String;)V

    .line 136
    :cond_86
    return-void

    .line 97
    :cond_87
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 98
    const-string/jumbo v0, "ReDeem"

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 99
    iget v0, p2, Lcom/bzbs/bean/NFCPlan;->CampaignId:I

    iput v0, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_CampaignID:I

    .line 100
    iput-boolean v2, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_Auto:Z

    .line 101
    iput-boolean v2, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    goto :goto_78

    .line 102
    :cond_a4
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "checkin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 103
    const-string/jumbo v0, "CheckIn"

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 104
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Place:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 105
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Message:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 106
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_Latitude:Ljava/lang/Double;

    .line 107
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_Longitude:Ljava/lang/Double;

    goto :goto_78

    .line 108
    :cond_cd
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 109
    const-string/jumbo v0, "Status"

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 110
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Message:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Status_Message:Ljava/lang/String;

    goto :goto_78

    .line 111
    :cond_e6
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "share"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 112
    const-string/jumbo v0, "Share"

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lcom/bzbs/bean/NFCTag;->Share_app_id:Ljava/lang/String;

    .line 114
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Share_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_name:Ljava/lang/String;

    .line 115
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Share_caption:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 116
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Share_picture:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_picture:Ljava/lang/String;

    .line 117
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Share_link:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 118
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Share_description:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 119
    iget-boolean v0, p2, Lcom/bzbs/bean/NFCPlan;->Share_RequireForReDeem:Z

    iput-boolean v0, p0, Lcom/bzbs/bean/NFCTag;->Share_RequireForReDeem:Z

    goto/16 :goto_78

    .line 120
    :cond_116
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "openapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 121
    const-string/jumbo v0, "OpenApp"

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 122
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->AndroidApp:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    goto/16 :goto_78

    .line 123
    :cond_130
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 124
    const-string/jumbo v0, "OpenUrl"

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 125
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Url:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    .line 126
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Url:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->OpenUrl_Link:Ljava/lang/String;

    goto/16 :goto_78

    .line 127
    :cond_14e
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 128
    const-string/jumbo v0, "OpenUrl"

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 129
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Url:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    .line 130
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Url:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->OpenUrl_Link:Ljava/lang/String;

    goto/16 :goto_78
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Status_Message:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_app_id:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_name:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_picture:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/bzbs/bean/NFCTag;->Share_RequireForReDeem:Z

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_Auto:Z

    .line 33
    iput-boolean v1, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->OpenUrl_Link:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->NFCWriteBack:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    .line 43
    iput-object v2, p0, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    .line 46
    iput-object p1, p0, Lcom/bzbs/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Status_Message:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_app_id:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_name:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_picture:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/bzbs/bean/NFCTag;->Share_RequireForReDeem:Z

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_Auto:Z

    .line 33
    iput-boolean v1, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->OpenUrl_Link:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->NFCWriteBack:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    .line 43
    iput-object v2, p0, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    .line 51
    iput-object p1, p0, Lcom/bzbs/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "ActionName"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "ActionName"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 54
    const-string/jumbo v0, "AN"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 57
    :cond_79
    const-string/jumbo v0, "Status_Message"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Status_Message:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "Share_app_id"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_app_id:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "Share_name"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_name:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "Share_caption"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "Share_picture"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_picture:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "Share_link"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "Share_description"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "Share_RequireForReDeem"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/NFCTag;->Share_RequireForReDeem:Z

    .line 67
    const-string/jumbo v0, "CheckIn_PlaceID"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "CheckIn_Message"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "CheckIn_Latitude"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_Latitude:Ljava/lang/Double;

    .line 70
    const-string/jumbo v0, "CheckIn_Longitude"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->CheckIn_Longitude:Ljava/lang/Double;

    .line 72
    const-string/jumbo v0, "ReDeem_CampaignID"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_CampaignID:I

    .line 73
    const-string/jumbo v0, "ReDeem_CampaignID"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 74
    const-string/jumbo v0, "RC"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_CampaignID:I

    .line 77
    :cond_113
    const-string/jumbo v0, "ReDeem_Auto"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_Auto:Z

    .line 78
    const-string/jumbo v0, "ReDeem_Auto"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 79
    const-string/jumbo v0, "RA"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_Auto:Z

    .line 82
    :cond_13d
    const-string/jumbo v0, "ReDeem_WriteBack"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 83
    const-string/jumbo v0, "ReDeem_WriteBack"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 84
    const-string/jumbo v0, "RW"

    invoke-static {p2, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 86
    :cond_167
    return-void
.end method


# virtual methods
.method public parseNextNFCTag(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Ljava/lang/String;)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 139
    iput-object p1, p0, Lcom/bzbs/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 140
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "redeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 141
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "ReDeem"

    invoke-direct {v0, p1, v1}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget v1, p2, Lcom/bzbs/bean/NFCPlan;->CampaignId:I

    iput v1, v0, Lcom/bzbs/bean/NFCTag;->ReDeem_CampaignID:I

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bzbs/bean/NFCTag;->ReDeem_Auto:Z

    .line 144
    iput-boolean v2, v0, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 145
    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    .line 174
    :cond_27
    :goto_27
    return-void

    .line 146
    :cond_28
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 147
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "ReDeem"

    invoke-direct {v0, p1, v1}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget v1, p2, Lcom/bzbs/bean/NFCPlan;->CampaignId:I

    iput v1, v0, Lcom/bzbs/bean/NFCTag;->ReDeem_CampaignID:I

    .line 149
    iput-boolean v2, v0, Lcom/bzbs/bean/NFCTag;->ReDeem_Auto:Z

    .line 150
    iput-boolean v2, v0, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 151
    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    goto :goto_27

    .line 152
    :cond_4a
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "checkin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 153
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "CheckIn"

    invoke-direct {v0, p1, v1}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p2, Lcom/bzbs/bean/NFCPlan;->Place:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 155
    iget-object v1, p2, Lcom/bzbs/bean/NFCPlan;->Message:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 156
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->CheckIn_Latitude:Ljava/lang/Double;

    .line 157
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->CheckIn_Longitude:Ljava/lang/Double;

    .line 158
    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    goto :goto_27

    .line 159
    :cond_78
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 160
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "Status"

    invoke-direct {v0, p1, v1}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p2, Lcom/bzbs/bean/NFCPlan;->Message:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->Status_Message:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    goto :goto_27

    .line 163
    :cond_96
    iget-object v0, p2, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "share"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 164
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "Share"

    invoke-direct {v0, p1, v1}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iput-object p3, v0, Lcom/bzbs/bean/NFCTag;->Share_app_id:Ljava/lang/String;

    .line 166
    iget-object v1, p2, Lcom/bzbs/bean/NFCPlan;->Message:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->Share_name:Ljava/lang/String;

    .line 167
    iget-object v1, p2, Lcom/bzbs/bean/NFCPlan;->Share_caption:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 168
    iget-object v1, p2, Lcom/bzbs/bean/NFCPlan;->Share_picture:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->Share_picture:Ljava/lang/String;

    .line 169
    iget-object v1, p2, Lcom/bzbs/bean/NFCPlan;->Share_link:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 170
    iget-object v1, p2, Lcom/bzbs/bean/NFCPlan;->Share_description:Ljava/lang/String;

    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 171
    iget-boolean v1, p2, Lcom/bzbs/bean/NFCPlan;->Share_RequireForReDeem:Z

    iput-boolean v1, v0, Lcom/bzbs/bean/NFCTag;->Share_RequireForReDeem:Z

    .line 172
    iput-object v0, p0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    goto/16 :goto_27
.end method
