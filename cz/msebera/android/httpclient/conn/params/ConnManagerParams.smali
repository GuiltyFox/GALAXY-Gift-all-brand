.class public final Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;
.super Ljava/lang/Object;
.source "ConnManagerParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    new-instance v0, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams$1;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams$1;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->a:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    return-void
.end method

.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;
    .registers 2

    .prologue
    .line 113
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v0, "http.conn-manager.max-per-route"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    .line 115
    if-nez v0, :cond_13

    .line 116
    sget-object v0, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->a:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    .line 118
    :cond_13
    return-object v0
.end method

.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;I)V
    .registers 3

    .prologue
    .line 130
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v0, "http.conn-manager.max-total"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->b(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 132
    return-void
.end method

.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v0, "http.conn-manager.timeout"

    invoke-interface {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/params/HttpParams;->b(Ljava/lang/String;J)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 81
    return-void
.end method

.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;)V
    .registers 3

    .prologue
    .line 101
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v0, "http.conn-manager.max-per-route"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 103
    return-void
.end method

.method public static b(Lcz/msebera/android/httpclient/params/HttpParams;)I
    .registers 3

    .prologue
    .line 143
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v0, "http.conn-manager.max-total"

    const/16 v1, 0x14

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
