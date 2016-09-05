.class public final Lcom/google/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# direct methods
.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .registers 3

    .prologue
    .line 77
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/Writer;

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/google/gson/internal/Streams$AppendableWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;Lcom/google/gson/internal/Streams$1;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static a(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    .registers 3

    .prologue
    .line 72
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->P:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/TypeAdapter;->a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 73
    return-void
.end method
