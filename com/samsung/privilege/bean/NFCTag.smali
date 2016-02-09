.class public Lcom/samsung/privilege/bean/NFCTag;
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

.field public NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

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

.field public objNFCResult:Lcom/samsung/privilege/bean/NFCResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V
    .registers 10
    .param p1, "pMediaType"    # Ljava/lang/String;
    .param p2, "nfcPlan"    # Lcom/samsung/privilege/bean/NFCPlan;
    .param p3, "nfcResult"    # Lcom/samsung/privilege/bean/NFCResult;
    .param p4, "app_id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Status_Message:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_app_id:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_name:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_picture:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 24
    iput-boolean v2, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_RequireForReDeem:Z

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 32
    iput-boolean v2, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_Auto:Z

    .line 33
    iput-boolean v2, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenUrl_Link:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->NFCWriteBack:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 43
    iput-object v1, p0, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    .line 89
    iput-object p1, p0, Lcom/samsung/privilege/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    .line 92
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "redeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 93
    const-string v0, "ReDeem"

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 94
    iget v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->CampaignId:I

    iput v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_CampaignID:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_Auto:Z

    .line 96
    iput-boolean v2, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 133
    :cond_68
    :goto_68
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_75

    .line 134
    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/privilege/bean/NFCTag;->parseNextNFCTag(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Ljava/lang/String;)V

    .line 136
    :cond_75
    return-void

    .line 97
    :cond_76
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 98
    const-string v0, "ReDeem"

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 99
    iget v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->CampaignId:I

    iput v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_CampaignID:I

    .line 100
    iput-boolean v2, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_Auto:Z

    .line 101
    iput-boolean v2, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    goto :goto_68

    .line 102
    :cond_91
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 103
    const-string v0, "CheckIn"

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 104
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Place:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 105
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Message:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 106
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_Latitude:Ljava/lang/Double;

    .line 107
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_Longitude:Ljava/lang/Double;

    goto :goto_68

    .line 108
    :cond_b8
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 109
    const-string v0, "Status"

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 110
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Message:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Status_Message:Ljava/lang/String;

    goto :goto_68

    .line 111
    :cond_cf
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "share"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 112
    const-string v0, "Share"

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_app_id:Ljava/lang/String;

    .line 114
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Share_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_name:Ljava/lang/String;

    .line 115
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Share_caption:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 116
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Share_picture:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_picture:Ljava/lang/String;

    .line 117
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Share_link:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 118
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Share_description:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 119
    iget-boolean v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Share_RequireForReDeem:Z

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_RequireForReDeem:Z

    goto/16 :goto_68

    .line 120
    :cond_fd
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 121
    const-string v0, "OpenApp"

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 122
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->AndroidApp:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    goto/16 :goto_68

    .line 123
    :cond_115
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 124
    const-string v0, "OpenUrl"

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 125
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Url:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    .line 126
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Url:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenUrl_Link:Ljava/lang/String;

    goto/16 :goto_68

    .line 127
    :cond_131
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 128
    const-string v0, "OpenUrl"

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 129
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Url:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    .line 130
    iget-object v0, p2, Lcom/samsung/privilege/bean/NFCPlan;->Url:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenUrl_Link:Ljava/lang/String;

    goto/16 :goto_68
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pMediaType"    # Ljava/lang/String;
    .param p2, "pActionName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Status_Message:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_app_id:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_name:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_picture:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_RequireForReDeem:Z

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_Auto:Z

    .line 33
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenUrl_Link:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->NFCWriteBack:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 43
    iput-object v2, p0, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    .line 46
    iput-object p1, p0, Lcom/samsung/privilege/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "pMediaType"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Status_Message:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_app_id:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_name:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_picture:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_RequireForReDeem:Z

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_Auto:Z

    .line 33
    iput-boolean v1, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenApp_NameSpace:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->OpenUrl_Link:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->NFCWriteBack:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 43
    iput-object v2, p0, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    .line 51
    iput-object p1, p0, Lcom/samsung/privilege/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 52
    const-string v0, "ActionName"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 53
    const-string v0, "ActionName"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 54
    const-string v0, "AN"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    .line 57
    :cond_67
    const-string v0, "Status_Message"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Status_Message:Ljava/lang/String;

    .line 59
    const-string v0, "Share_app_id"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_app_id:Ljava/lang/String;

    .line 60
    const-string v0, "Share_name"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_name:Ljava/lang/String;

    .line 61
    const-string v0, "Share_caption"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 62
    const-string v0, "Share_picture"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_picture:Ljava/lang/String;

    .line 63
    const-string v0, "Share_link"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 64
    const-string v0, "Share_description"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 65
    const-string v0, "Share_RequireForReDeem"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/NFCTag;->Share_RequireForReDeem:Z

    .line 67
    const-string v0, "CheckIn_PlaceID"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 68
    const-string v0, "CheckIn_Message"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 69
    const-string v0, "CheckIn_Latitude"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_Latitude:Ljava/lang/Double;

    .line 70
    const-string v0, "CheckIn_Longitude"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_Longitude:Ljava/lang/Double;

    .line 72
    const-string v0, "ReDeem_CampaignID"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_CampaignID:I

    .line 73
    const-string v0, "ReDeem_CampaignID"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 74
    const-string v0, "RC"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_CampaignID:I

    .line 77
    :cond_f1
    const-string v0, "ReDeem_Auto"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_Auto:Z

    .line 78
    const-string v0, "ReDeem_Auto"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 79
    const-string v0, "RA"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_Auto:Z

    .line 82
    :cond_117
    const-string v0, "ReDeem_WriteBack"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 83
    const-string v0, "ReDeem_WriteBack"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 84
    const-string v0, "RW"

    invoke-static {p2, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 86
    :cond_13d
    return-void
.end method


# virtual methods
.method public parseNextNFCTag(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Ljava/lang/String;)V
    .registers 10
    .param p1, "pMediaType"    # Ljava/lang/String;
    .param p2, "nfcPlan"    # Lcom/samsung/privilege/bean/NFCPlan;
    .param p3, "app_id"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 139
    iput-object p1, p0, Lcom/samsung/privilege/bean/NFCTag;->MediaType:Ljava/lang/String;

    .line 140
    iget-object v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "redeem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 141
    new-instance v0, Lcom/samsung/privilege/bean/NFCTag;

    const-string v1, "ReDeem"

    invoke-direct {v0, p1, v1}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v0, "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    iget v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->CampaignId:I

    iput v1, v0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_CampaignID:I

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_Auto:Z

    .line 144
    iput-boolean v3, v0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 145
    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 174
    .end local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_25
    :goto_25
    return-void

    .line 146
    :cond_26
    iget-object v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "campaign"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 147
    new-instance v0, Lcom/samsung/privilege/bean/NFCTag;

    const-string v1, "ReDeem"

    invoke-direct {v0, p1, v1}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .restart local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    iget v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->CampaignId:I

    iput v1, v0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_CampaignID:I

    .line 149
    iput-boolean v3, v0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_Auto:Z

    .line 150
    iput-boolean v3, v0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    .line 151
    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    goto :goto_25

    .line 152
    .end local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_46
    iget-object v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 153
    new-instance v0, Lcom/samsung/privilege/bean/NFCTag;

    const-string v1, "CheckIn"

    invoke-direct {v0, p1, v1}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .restart local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    iget-object v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Place:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_PlaceID:Ljava/lang/String;

    .line 155
    iget-object v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Message:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_Message:Ljava/lang/String;

    .line 156
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_Latitude:Ljava/lang/Double;

    .line 157
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/privilege/bean/NFCTag;->CheckIn_Longitude:Ljava/lang/Double;

    .line 158
    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    goto :goto_25

    .line 159
    .end local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_72
    iget-object v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "post"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 160
    new-instance v0, Lcom/samsung/privilege/bean/NFCTag;

    const-string v1, "Status"

    invoke-direct {v0, p1, v1}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .restart local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    iget-object v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Message:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/NFCTag;->Status_Message:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    goto :goto_25

    .line 163
    .end local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_8e
    iget-object v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "share"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 164
    new-instance v0, Lcom/samsung/privilege/bean/NFCTag;

    const-string v1, "Share"

    invoke-direct {v0, p1, v1}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .restart local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    iput-object p3, v0, Lcom/samsung/privilege/bean/NFCTag;->Share_app_id:Ljava/lang/String;

    .line 166
    iget-object v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Message:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/NFCTag;->Share_name:Ljava/lang/String;

    .line 167
    iget-object v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Share_caption:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/NFCTag;->Share_caption:Ljava/lang/String;

    .line 168
    iget-object v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Share_picture:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/NFCTag;->Share_picture:Ljava/lang/String;

    .line 169
    iget-object v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Share_link:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/NFCTag;->Share_link:Ljava/lang/String;

    .line 170
    iget-object v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Share_description:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/privilege/bean/NFCTag;->Share_description:Ljava/lang/String;

    .line 171
    iget-boolean v1, p2, Lcom/samsung/privilege/bean/NFCPlan;->Share_RequireForReDeem:Z

    iput-boolean v1, v0, Lcom/samsung/privilege/bean/NFCTag;->Share_RequireForReDeem:Z

    .line 172
    iput-object v0, p0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    goto/16 :goto_25
.end method
