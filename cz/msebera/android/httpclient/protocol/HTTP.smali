.class public final Lcz/msebera/android/httpclient/protocol/HTTP;
.super Ljava/lang/Object;
.source "HTTP.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->c:Ljava/nio/charset/Charset;

    sput-object v0, Lcz/msebera/android/httpclient/protocol/HTTP;->a:Ljava/nio/charset/Charset;

    .line 70
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->b:Ljava/nio/charset/Charset;

    sput-object v0, Lcz/msebera/android/httpclient/protocol/HTTP;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(C)Z
    .registers 2

    .prologue
    .line 129
    const/16 v0, 0x20

    if-eq p0, v0, :cond_10

    const/16 v0, 0x9

    if-eq p0, v0, :cond_10

    const/16 v0, 0xd

    if-eq p0, v0, :cond_10

    const/16 v0, 0xa

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
