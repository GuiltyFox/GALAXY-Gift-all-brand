.class public Lcom/bzbs/bean/CampaignExtraAdItem;
.super Ljava/lang/Object;
.source "CampaignExtraAdItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public Caption:Ljava/lang/String;

.field public Content_type:Ljava/lang/String;

.field public Quality:Ljava/lang/String;

.field public Size:Ljava/lang/String;

.field public Src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string/jumbo v0, "src"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "caption"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignExtraAdItem;->Caption:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "content_type"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignExtraAdItem;->Content_type:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignExtraAdItem;->Size:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "quality"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CampaignExtraAdItem;->Quality:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
