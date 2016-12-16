.class public Lcom/bzbs/bean/QueueItem;
.super Ljava/lang/Object;
.source "QueueItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public Called:Z

.field public Cancelled:Z

.field public Prefix:Ljava/lang/String;

.field public Queue:Ljava/lang/String;

.field public Queuing:Ljava/lang/String;

.field public RowKey:Ljava/lang/String;

.field public Seat:I

.field public Skipped:Z

.field public WaitingMinute:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/bzbs/bean/QueueItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/bean/QueueItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->RowKey:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->Queue:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->Prefix:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/bzbs/bean/QueueItem;->Seat:I

    .line 22
    iput-boolean v1, p0, Lcom/bzbs/bean/QueueItem;->Called:Z

    .line 23
    iput-boolean v1, p0, Lcom/bzbs/bean/QueueItem;->Cancelled:Z

    .line 24
    iput-boolean v1, p0, Lcom/bzbs/bean/QueueItem;->Skipped:Z

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->Queuing:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->WaitingMinute:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->RowKey:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->Queue:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->Prefix:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/bzbs/bean/QueueItem;->Seat:I

    .line 22
    iput-boolean v1, p0, Lcom/bzbs/bean/QueueItem;->Called:Z

    .line 23
    iput-boolean v1, p0, Lcom/bzbs/bean/QueueItem;->Cancelled:Z

    .line 24
    iput-boolean v1, p0, Lcom/bzbs/bean/QueueItem;->Skipped:Z

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->Queuing:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->WaitingMinute:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "RowKey"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->RowKey:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "Queue"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->Queue:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "Prefix"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->Prefix:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "Seat"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/bean/QueueItem;->Seat:I

    .line 41
    const-string/jumbo v0, "Called"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/QueueItem;->Called:Z

    .line 42
    const-string/jumbo v0, "Cancelled"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/QueueItem;->Cancelled:Z

    .line 43
    const-string/jumbo v0, "Skipped"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/bean/QueueItem;->Skipped:Z

    .line 44
    const-string/jumbo v0, "Queuing"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->Queuing:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "WaitingMinute"

    invoke-static {p1, v0}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/bean/QueueItem;->WaitingMinute:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 53
    :try_start_c
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 54
    new-instance v3, Lcom/bzbs/bean/QueueItem;

    invoke-direct {v3, v1}, Lcom/bzbs/bean/QueueItem;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1b

    .line 51
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 55
    :catch_1b
    move-exception v1

    .line 56
    sget-object v3, Lcom/bzbs/bean/QueueItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error while initial(QueueItem):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 60
    :cond_3a
    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
