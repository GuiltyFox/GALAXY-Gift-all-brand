.class public Lcom/bzbs/lib/survey/bean/BadgeAlert;
.super Ljava/lang/Object;
.source "BadgeAlert.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public IsSkipNoti:Z

.field public auto_redeem:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public fb_description:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public level:I

.field public name:Ljava/lang/String;

.field public points:I

.field public unlocked_by_others:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZII)V
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "auto_redeem"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "fb_description"    # Ljava/lang/String;
    .param p6, "isSkipNoti"    # Z
    .param p7, "unlocked_by_others"    # Z
    .param p8, "level"    # I
    .param p9, "points"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->id:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->name:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->auto_redeem:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->description:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->fb_description:Ljava/lang/String;

    .line 43
    iput-boolean p6, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->IsSkipNoti:Z

    .line 44
    iput-boolean p7, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->unlocked_by_others:Z

    .line 45
    iput p8, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->level:I

    .line 46
    iput p9, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->points:I

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "id"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->id:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->name:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "level"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->level:I

    .line 29
    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->points:I

    .line 30
    const-string/jumbo v0, "unlocked_by_others"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->unlocked_by_others:Z

    .line 31
    const-string/jumbo v0, "auto_redeem"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->auto_redeem:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "description"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->description:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "fb_description"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->fb_description:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "IsSkipNoti"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/BadgeAlert;->IsSkipNoti:Z

    .line 35
    return-void
.end method
