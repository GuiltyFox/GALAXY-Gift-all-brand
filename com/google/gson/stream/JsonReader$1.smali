.class final Lcom/google/gson/stream/JsonReader$1;
.super Lcom/google/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/stream/JsonReader;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1600
    invoke-direct {p0}, Lcom/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
    .registers 5

    .prologue
    .line 1602
    instance-of v0, p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    if-eqz v0, :cond_a

    .line 1603
    check-cast p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    invoke-virtual {p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->a()V

    .line 1621
    :goto_9
    return-void

    .line 1606
    :cond_a
    # getter for: Lcom/google/gson/stream/JsonReader;->peeked:I
    invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->access$000(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    .line 1607
    if-nez v0, :cond_14

    .line 1608
    # invokes: Lcom/google/gson/stream/JsonReader;->doPeek()I
    invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->access$100(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    .line 1610
    :cond_14
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1e

    .line 1611
    const/16 v0, 0x9

    # setter for: Lcom/google/gson/stream/JsonReader;->peeked:I
    invoke-static {p1, v0}, Lcom/google/gson/stream/JsonReader;->access$002(Lcom/google/gson/stream/JsonReader;I)I

    goto :goto_9

    .line 1612
    :cond_1e
    const/16 v1, 0xc

    if-ne v0, v1, :cond_28

    .line 1613
    const/16 v0, 0x8

    # setter for: Lcom/google/gson/stream/JsonReader;->peeked:I
    invoke-static {p1, v0}, Lcom/google/gson/stream/JsonReader;->access$002(Lcom/google/gson/stream/JsonReader;I)I

    goto :goto_9

    .line 1614
    :cond_28
    const/16 v1, 0xe

    if-ne v0, v1, :cond_32

    .line 1615
    const/16 v0, 0xa

    # setter for: Lcom/google/gson/stream/JsonReader;->peeked:I
    invoke-static {p1, v0}, Lcom/google/gson/stream/JsonReader;->access$002(Lcom/google/gson/stream/JsonReader;I)I

    goto :goto_9

    .line 1617
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/google/gson/stream/JsonReader;->getLineNumber()I
    invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->access$200(Lcom/google/gson/stream/JsonReader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
    invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->access$300(Lcom/google/gson/stream/JsonReader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
