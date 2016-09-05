.class public abstract Lokio/ForwardingSource;
.super Ljava/lang/Object;
.source "ForwardingSource.java"

# interfaces
.implements Lokio/Source;


# instance fields
.field private final a:Lokio/Source;


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_e
    iput-object p1, p0, Lokio/ForwardingSource;->a:Lokio/Source;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lokio/Buffer;J)J
    .registers 6

    .prologue
    .line 35
    iget-object v0, p0, Lokio/ForwardingSource;->a:Lokio/Source;

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->a(Lokio/Buffer;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lokio/ForwardingSource;->a:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->a()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lokio/ForwardingSource;->a:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->close()V

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/ForwardingSource;->a:Lokio/Source;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
