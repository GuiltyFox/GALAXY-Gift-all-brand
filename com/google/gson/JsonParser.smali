.class public final Lcom/google/gson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .registers 7

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->isLenient()Z

    move-result v1

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 84
    :try_start_8
    invoke-static {p1}, Lcom/google/gson/internal/Streams;->a(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    :try_end_b
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_b} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_b} :catch_37
    .catchall {:try_start_8 .. :try_end_b} :catchall_32

    move-result-object v0

    .line 90
    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    return-object v0

    .line 85
    :catch_10
    move-exception v0

    .line 86
    :try_start_11
    new-instance v2, Lcom/google/gson/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed parsing JSON source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_32

    .line 90
    :catchall_32
    move-exception v0

    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v0

    .line 87
    :catch_37
    move-exception v0

    .line 88
    :try_start_38
    new-instance v2, Lcom/google/gson/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed parsing JSON source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_59
    .catchall {:try_start_38 .. :try_end_59} :catchall_32
.end method
