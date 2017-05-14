.class public Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;
.super Ljava/lang/Object;
.source "DataCallback.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 3

    .prologue
    .line 11
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 12
    return-void
.end method
