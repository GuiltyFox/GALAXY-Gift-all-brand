.class public final Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;
.super Ljava/lang/Object;
.source "ImmutableHttpProcessor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/protocol/HttpProcessor;


# instance fields
.field private final a:[Lcz/msebera/android/httpclient/HttpRequestInterceptor;

.field private final b:[Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# direct methods
.method public constructor <init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;[Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_1d

    .line 55
    array-length v0, p1

    .line 56
    new-array v1, v0, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    iput-object v1, p0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;->a:[Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 57
    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;->a:[Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    :goto_10
    if-eqz p2, :cond_22

    .line 62
    array-length v0, p2

    .line 63
    new-array v1, v0, [Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    iput-object v1, p0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;->b:[Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 64
    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;->b:[Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :goto_1c
    return-void

    .line 59
    :cond_1d
    new-array v0, v2, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;->a:[Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    goto :goto_10

    .line 66
    :cond_22
    new-array v0, v2, [Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;->b:[Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    goto :goto_1c
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 7

    .prologue
    .line 130
    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;->a:[Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 131
    invoke-interface {v3, p1, p2}, Lcz/msebera/android/httpclient/HttpRequestInterceptor;->process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 133
    :cond_e
    return-void
.end method

.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 7

    .prologue
    .line 138
    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;->b:[Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 139
    invoke-interface {v3, p1, p2}, Lcz/msebera/android/httpclient/HttpResponseInterceptor;->process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 141
    :cond_e
    return-void
.end method
