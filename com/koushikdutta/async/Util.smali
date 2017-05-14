.class public Lcom/koushikdutta/async/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static a:Z

.field static final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-class v0, Lcom/koushikdutta/async/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/koushikdutta/async/Util;->b:Z

    .line 18
    sput-boolean v1, Lcom/koushikdutta/async/Util;->a:Z

    return-void

    :cond_f
    move v0, v1

    .line 17
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/Class;)Lcom/koushikdutta/async/AsyncSocket;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/koushikdutta/async/AsyncSocket;",
            ">(",
            "Lcom/koushikdutta/async/AsyncSocket;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    :goto_6
    return-object p0

    :cond_7
    move-object v0, p0

    .line 222
    :cond_8
    instance-of v1, v0, Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;

    if-eqz v1, :cond_1a

    .line 223
    check-cast v0, Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;

    invoke-interface {v0}, Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;->o()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object p0, v0

    .line 225
    goto :goto_6

    .line 227
    :cond_1a
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public static a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 6

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    :cond_1
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->l()Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->d_()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    if-lez v1, :cond_5c

    .line 23
    invoke-interface {v0, p0, p1}, Lcom/koushikdutta/async/callback/DataCallback;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 24
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->d_()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 35
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 37
    sget-boolean v0, Lcom/koushikdutta/async/Util;->a:Z

    if-eqz v0, :cond_49

    .line 56
    :cond_48
    return-void

    .line 39
    :cond_49
    sget-boolean v0, Lcom/koushikdutta/async/Util;->b:Z

    if-nez v0, :cond_53

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mDataHandler failed to consume data, yet remains the mDataHandler."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_5c
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->l()Z

    move-result v1

    if-nez v1, :cond_48

    .line 48
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "emitter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 51
    sget-boolean v0, Lcom/koushikdutta/async/Util;->a:Z

    if-nez v0, :cond_48

    .line 53
    sget-boolean v0, Lcom/koushikdutta/async/Util;->b:Z

    if-nez v0, :cond_ab

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_ab
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not all data was consumed by Util.emitAllData"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 5

    .prologue
    .line 124
    new-instance v0, Lcom/koushikdutta/async/Util$3;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/Util$3;-><init>(Lcom/koushikdutta/async/DataSink;)V

    .line 132
    invoke-interface {p0, v0}, Lcom/koushikdutta/async/DataEmitter;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 133
    new-instance v0, Lcom/koushikdutta/async/Util$4;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/Util$4;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 140
    new-instance v0, Lcom/koushikdutta/async/Util$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/Util$5;-><init>(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 155
    invoke-interface {p0, v0}, Lcom/koushikdutta/async/DataEmitter;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 156
    new-instance v1, Lcom/koushikdutta/async/Util$6;

    invoke-direct {v1, v0}, Lcom/koushikdutta/async/Util$6;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 164
    return-void
.end method

.method public static a(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 242
    if-nez p0, :cond_3

    .line 245
    :goto_2
    return-void

    .line 244
    :cond_3
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->h()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public static a(Lcom/koushikdutta/async/DataSink;)V
    .registers 2

    .prologue
    .line 253
    if-nez p0, :cond_3

    .line 256
    :goto_2
    return-void

    .line 255
    :cond_3
    invoke-interface {p0}, Lcom/koushikdutta/async/DataSink;->g()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    goto :goto_2
.end method

.method public static a(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 4

    .prologue
    .line 198
    new-instance v0, Lcom/koushikdutta/async/Util$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/Util$8;-><init>(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-interface {p0, v0}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 208
    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->a()V

    .line 209
    return-void
.end method

.method public static a(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 5

    .prologue
    .line 211
    array-length v0, p1

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 213
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 214
    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 215
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 216
    invoke-static {p0, v1, p2}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 217
    return-void
.end method

.method public static a(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 248
    if-eqz p0, :cond_5

    .line 249
    invoke-interface {p0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 250
    :cond_5
    return-void
.end method

.method public static a(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .registers 1

    .prologue
    .line 259
    if-eqz p0, :cond_5

    .line 260
    invoke-interface {p0}, Lcom/koushikdutta/async/callback/WritableCallback;->a()V

    .line 261
    :cond_5
    return-void
.end method

.method public static a(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 12

    .prologue
    .line 63
    new-instance v6, Lcom/koushikdutta/async/Util$1;

    invoke-direct {v6, p4}, Lcom/koushikdutta/async/Util$1;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 74
    new-instance v1, Lcom/koushikdutta/async/Util$2;

    move-object v2, p3

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/Util$2;-><init>(Lcom/koushikdutta/async/DataSink;Ljava/io/InputStream;JLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 116
    invoke-interface {p3, v1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 118
    invoke-interface {p3, v6}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 120
    invoke-interface {v1}, Lcom/koushikdutta/async/callback/WritableCallback;->a()V

    .line 121
    return-void
.end method

.method public static a(Ljava/io/InputStream;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 5

    .prologue
    .line 59
    const-wide/32 v0, 0x7fffffff

    invoke-static {p0, v0, v1, p1, p2}, Lcom/koushikdutta/async/Util;->a(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 60
    return-void
.end method
