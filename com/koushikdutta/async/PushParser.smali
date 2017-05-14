.class public Lcom/koushikdutta/async/PushParser;
.super Ljava/lang/Object;
.source "PushParser.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# static fields
.field static d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/koushikdutta/async/DataEmitter;

.field b:Ljava/nio/ByteOrder;

.field c:Lcom/koushikdutta/async/ByteBufferList;

.field private e:Lcom/koushikdutta/async/PushParser$Waiter;

.field private f:Lcom/koushikdutta/async/PushParser$Waiter;

.field private g:Lcom/koushikdutta/async/PushParser$Waiter;

.field private h:Lcom/koushikdutta/async/PushParser$Waiter;

.field private i:Lcom/koushikdutta/async/PushParser$Waiter;

.field private j:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback",
            "<[B>;"
        }
    .end annotation
.end field

.field private k:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback",
            "<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback",
            "<[B>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/koushikdutta/async/PushParser$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 344
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/PushParser;->d:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/DataEmitter;)V
    .registers 4

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lcom/koushikdutta/async/PushParser$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$1;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->e:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 187
    new-instance v0, Lcom/koushikdutta/async/PushParser$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$2;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->f:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 195
    new-instance v0, Lcom/koushikdutta/async/PushParser$3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$3;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->g:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 203
    new-instance v0, Lcom/koushikdutta/async/PushParser$4;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$4;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->h:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 211
    new-instance v0, Lcom/koushikdutta/async/PushParser$5;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$5;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->i:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 219
    new-instance v0, Lcom/koushikdutta/async/PushParser$6;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/PushParser$6;-><init>(Lcom/koushikdutta/async/PushParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 226
    new-instance v0, Lcom/koushikdutta/async/PushParser$7;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/PushParser$7;-><init>(Lcom/koushikdutta/async/PushParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->k:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 233
    new-instance v0, Lcom/koushikdutta/async/PushParser$8;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/PushParser$8;-><init>(Lcom/koushikdutta/async/PushParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->l:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 241
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->m:Ljava/util/LinkedList;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->n:Ljava/util/ArrayList;

    .line 243
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->b:Ljava/nio/ByteOrder;

    .line 327
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->c:Lcom/koushikdutta/async/ByteBufferList;

    .line 251
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser;->a:Lcom/koushikdutta/async/DataEmitter;

    .line 252
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->a:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0, p0}, Lcom/koushikdutta/async/DataEmitter;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 253
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/PushParser;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->n:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(BLcom/koushikdutta/async/callback/DataCallback;)Lcom/koushikdutta/async/PushParser;
    .registers 5

    .prologue
    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->m:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$UntilWaiter;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/PushParser$UntilWaiter;-><init>(BLcom/koushikdutta/async/callback/DataCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 272
    return-object p0
.end method

.method public a(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/PushParser$ParseCallback",
            "<[B>;)",
            "Lcom/koushikdutta/async/PushParser;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->m:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;-><init>(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 262
    return-object p0
.end method

.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 5

    .prologue
    .line 330
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 331
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3c

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/PushParser$Waiter;

    iget v0, v0, Lcom/koushikdutta/async/PushParser$Waiter;->c:I

    if-lt v1, v0, :cond_3c

    .line 332
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->c:Lcom/koushikdutta/async/ByteBufferList;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 333
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/PushParser$Waiter;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, p1, v1}, Lcom/koushikdutta/async/PushParser$Waiter;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->m:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_5

    .line 336
    :cond_3c
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_49

    .line 337
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->c:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 338
    :cond_49
    return-void
.end method
