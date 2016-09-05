.class public Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;
.super Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;
.source "BasicCommentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 47
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/cookie/SetCookie;->c(Ljava/lang/String;)V

    .line 49
    return-void
.end method
