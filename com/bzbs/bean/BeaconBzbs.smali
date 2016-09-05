.class public Lcom/bzbs/bean/BeaconBzbs;
.super Ljava/lang/Object;
.source "BeaconBzbs.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public AgencyId:I

.field public Beacon_Scanning:I

.field public Beacon_Waiting:I

.field public Identifier:Ljava/lang/String;

.field public IsStepIn:Z

.field public Major:I

.field public Minor:I

.field public NFCToken_StepIn:Ljava/lang/String;

.field public NFCToken_StepOut:Ljava/lang/String;

.field public StepIn_TimeOut:I

.field public StepOut_TimeOut:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    const/16 v3, 0x19

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v2, p0, Lcom/bzbs/bean/BeaconBzbs;->AgencyId:I

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/BeaconBzbs;->Identifier:Ljava/lang/String;

    .line 12
    iput v2, p0, Lcom/bzbs/bean/BeaconBzbs;->Major:I

    .line 13
    iput v2, p0, Lcom/bzbs/bean/BeaconBzbs;->Minor:I

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/BeaconBzbs;->NFCToken_StepIn:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/BeaconBzbs;->NFCToken_StepOut:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/bzbs/bean/BeaconBzbs;->Beacon_Scanning:I

    .line 17
    iput v3, p0, Lcom/bzbs/bean/BeaconBzbs;->Beacon_Waiting:I

    .line 18
    sget v0, Lcom/bzbs/data/AppSetting;->ab:I

    iput v0, p0, Lcom/bzbs/bean/BeaconBzbs;->StepIn_TimeOut:I

    .line 19
    sget v0, Lcom/bzbs/data/AppSetting;->ab:I

    iput v0, p0, Lcom/bzbs/bean/BeaconBzbs;->StepOut_TimeOut:I

    .line 21
    iput-boolean v2, p0, Lcom/bzbs/bean/BeaconBzbs;->IsStepIn:Z

    .line 24
    const-string/jumbo v0, "AgencyId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/BeaconBzbs;->AgencyId:I

    .line 25
    const-string/jumbo v0, "Identifier"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/BeaconBzbs;->Identifier:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "Major"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/BeaconBzbs;->Major:I

    .line 27
    const-string/jumbo v0, "Minor"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/BeaconBzbs;->Minor:I

    .line 28
    const-string/jumbo v0, "NFCToken_StepIn"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/BeaconBzbs;->NFCToken_StepIn:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "NFCToken_StepOut"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/BeaconBzbs;->NFCToken_StepOut:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "Beacon_Scanning"

    invoke-static {p1, v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/BeaconBzbs;->Beacon_Scanning:I

    .line 31
    const-string/jumbo v0, "Beacon_Waiting"

    invoke-static {p1, v0, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/BeaconBzbs;->Beacon_Waiting:I

    .line 32
    const-string/jumbo v0, "StepIn_TimeOut"

    sget v1, Lcom/bzbs/data/AppSetting;->ab:I

    invoke-static {p1, v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/BeaconBzbs;->StepIn_TimeOut:I

    .line 33
    const-string/jumbo v0, "StepOut_TimeOut"

    sget v1, Lcom/bzbs/data/AppSetting;->ab:I

    invoke-static {p1, v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/BeaconBzbs;->StepOut_TimeOut:I

    .line 35
    iput-boolean v2, p0, Lcom/bzbs/bean/BeaconBzbs;->IsStepIn:Z

    .line 36
    return-void
.end method
