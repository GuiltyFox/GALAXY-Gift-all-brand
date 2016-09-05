.class public Lcom/bzbs/bean/BadgeAlert;
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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/bzbs/bean/BadgeAlert;->id:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/bzbs/bean/BadgeAlert;->name:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/bzbs/bean/BadgeAlert;->level:I

    .line 35
    iput p4, p0, Lcom/bzbs/bean/BadgeAlert;->points:I

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/BadgeAlert;->description:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/BadgeAlert;->fb_description:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "id"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/BadgeAlert;->id:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/BadgeAlert;->name:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "level"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/BadgeAlert;->level:I

    .line 26
    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/BadgeAlert;->points:I

    .line 27
    const-string/jumbo v0, "description"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/BadgeAlert;->description:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "fb_description"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/BadgeAlert;->fb_description:Ljava/lang/String;

    .line 29
    return-void
.end method
