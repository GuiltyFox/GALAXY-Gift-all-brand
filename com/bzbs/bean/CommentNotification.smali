.class public Lcom/bzbs/bean/CommentNotification;
.super Ljava/lang/Object;
.source "CommentNotification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public BuzzKey:Ljava/lang/String;

.field public Message:Ljava/lang/String;

.field public PartitionKey:Ljava/lang/String;

.field public Type:Ljava/lang/String;

.field public UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "PartitionKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CommentNotification;->PartitionKey:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "BuzzKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CommentNotification;->BuzzKey:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "Type"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CommentNotification;->Type:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "UserId"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CommentNotification;->UserId:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "Message"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/CommentNotification;->Message:Ljava/lang/String;

    .line 28
    return-void
.end method
