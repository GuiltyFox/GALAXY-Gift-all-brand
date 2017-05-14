.class public final Lcom/google/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# direct methods
.method public static a(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .registers 3

    .prologue
    .line 44
    const/4 v1, 0x1

    .line 46
    :try_start_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 47
    const/4 v1, 0x0

    .line 48
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->P:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v0, p0}, Lcom/google/gson/TypeAdapter;->b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_1 .. :try_end_d} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_d} :catch_28

    .line 55
    :goto_d
    return-object v0

    .line 49
    :catch_e
    move-exception v0

    .line 54
    if-eqz v1, :cond_14

    .line 55
    sget-object v0, Lcom/google/gson/JsonNull;->a:Lcom/google/gson/JsonNull;

    goto :goto_d

    .line 58
    :cond_14
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 59
    :catch_1a
    move-exception v0

    .line 60
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 61
    :catch_21
    move-exception v0

    .line 62
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :catch_28
    move-exception v0

    .line 64
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

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
