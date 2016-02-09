.class public Lcom/samsung/privilege/bean/BadgeAlert;
.super Ljava/lang/Object;
.source "BadgeAlert.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public description:Ljava/lang/String;

.field public fb_description:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public level:I

.field public name:Ljava/lang/String;

.field public points:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "points"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/privilege/bean/BadgeAlert;->id:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/samsung/privilege/bean/BadgeAlert;->name:Ljava/lang/String;

    .line 35
    iput p3, p0, Lcom/samsung/privilege/bean/BadgeAlert;->level:I

    .line 36
    iput p4, p0, Lcom/samsung/privilege/bean/BadgeAlert;->points:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/BadgeAlert;->description:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/BadgeAlert;->fb_description:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/BadgeAlert;->id:Ljava/lang/String;

    .line 25
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/BadgeAlert;->name:Ljava/lang/String;

    .line 26
    const-string v0, "level"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/BadgeAlert;->level:I

    .line 27
    const-string v0, "points"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/bean/BadgeAlert;->points:I

    .line 28
    const-string v0, "description"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/BadgeAlert;->description:Ljava/lang/String;

    .line 29
    const-string v0, "fb_description"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/BadgeAlert;->fb_description:Ljava/lang/String;

    .line 30
    return-void
.end method
