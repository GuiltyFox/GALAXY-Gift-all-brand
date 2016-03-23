.class public Lcom/bzbs/lib/survey/bean/MissionAlert;
.super Ljava/lang/Object;
.source "MissionAlert.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public auto_redeem:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public points:I

.field public unlocked_by_others:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "points"    # I
    .param p4, "unlocked_by_others"    # Z
    .param p5, "auto_redeem"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bzbs/lib/survey/bean/MissionAlert;->id:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/bzbs/lib/survey/bean/MissionAlert;->name:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/bzbs/lib/survey/bean/MissionAlert;->points:I

    .line 34
    iput-boolean p4, p0, Lcom/bzbs/lib/survey/bean/MissionAlert;->unlocked_by_others:Z

    .line 35
    iput-object p5, p0, Lcom/bzbs/lib/survey/bean/MissionAlert;->auto_redeem:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "id"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/MissionAlert;->id:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/MissionAlert;->name:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/MissionAlert;->points:I

    .line 26
    const-string/jumbo v0, "unlocked_by_others"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/MissionAlert;->unlocked_by_others:Z

    .line 27
    const-string/jumbo v0, "auto_redeem"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/MissionAlert;->auto_redeem:Ljava/lang/String;

    .line 28
    return-void
.end method
