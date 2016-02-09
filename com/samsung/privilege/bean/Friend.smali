.class public Lcom/samsung/privilege/bean/Friend;
.super Ljava/lang/Object;
.source "Friend.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isInvited:Z

.field public is_app_user:Z

.field public layout_type:I

.field public name:Ljava/lang/String;

.field public rank:I

.field public score:J

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "layout_type"    # I
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "is_app_user"    # Z

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v2, p0, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Friend;->uid:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Friend;->name:Ljava/lang/String;

    .line 15
    iput-boolean v2, p0, Lcom/samsung/privilege/bean/Friend;->is_app_user:Z

    .line 16
    iput v2, p0, Lcom/samsung/privilege/bean/Friend;->rank:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/privilege/bean/Friend;->score:J

    .line 19
    iput-boolean v2, p0, Lcom/samsung/privilege/bean/Friend;->isInvited:Z

    .line 22
    iput p1, p0, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    .line 24
    iput-object p2, p0, Lcom/samsung/privilege/bean/Friend;->uid:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/samsung/privilege/bean/Friend;->name:Ljava/lang/String;

    .line 26
    iput-boolean p4, p0, Lcom/samsung/privilege/bean/Friend;->is_app_user:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v2, p0, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Friend;->uid:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/bean/Friend;->name:Ljava/lang/String;

    .line 15
    iput-boolean v2, p0, Lcom/samsung/privilege/bean/Friend;->is_app_user:Z

    .line 16
    iput v2, p0, Lcom/samsung/privilege/bean/Friend;->rank:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/privilege/bean/Friend;->score:J

    .line 19
    iput-boolean v2, p0, Lcom/samsung/privilege/bean/Friend;->isInvited:Z

    .line 30
    const-string v0, "uid"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Friend;->uid:Ljava/lang/String;

    .line 31
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/bean/Friend;->name:Ljava/lang/String;

    .line 32
    const-string v0, "is_app_user"

    invoke-static {p1, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/bean/Friend;->is_app_user:Z

    .line 34
    iget-boolean v0, p0, Lcom/samsung/privilege/bean/Friend;->is_app_user:Z

    if-eqz v0, :cond_3c

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    .line 39
    :goto_3b
    return-void

    .line 37
    :cond_3c
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/privilege/bean/Friend;->layout_type:I

    goto :goto_3b
.end method
