.class public Lcom/bzbs/bean/NotificationBadge;
.super Ljava/lang/Object;
.source "NotificationBadge.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public id:Ljava/lang/String;

.field public level:I

.field public name:Ljava/lang/String;

.field public points:I

.field public unlocked_by_others:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "id"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NotificationBadge;->id:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/NotificationBadge;->name:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "level"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/NotificationBadge;->level:I

    .line 26
    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/NotificationBadge;->points:I

    .line 27
    const-string/jumbo v0, "unlocked_by_others"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/NotificationBadge;->unlocked_by_others:Z

    .line 29
    return-void
.end method
