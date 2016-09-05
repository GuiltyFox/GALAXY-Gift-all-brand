.class public abstract Lcz/msebera/android/httpclient/params/AbstractHttpParams;
.super Ljava/lang/Object;
.source "AbstractHttpParams.java"

# interfaces
.implements Lcz/msebera/android/httpclient/params/HttpParams;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    if-nez v0, :cond_7

    .line 70
    :goto_6
    return p2

    :cond_7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_6
.end method

.method public a(Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    if-nez v0, :cond_7

    .line 57
    :goto_6
    return-wide p2

    :cond_7
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    if-nez v0, :cond_7

    .line 96
    :goto_6
    return p2

    :cond_7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_6
.end method

.method public b(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 4

    .prologue
    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 75
    return-object p0
.end method

.method public b(Ljava/lang/String;J)Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 6

    .prologue
    .line 61
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 62
    return-object p0
.end method

.method public b(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 4

    .prologue
    .line 100
    if-eqz p2, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 101
    return-object p0

    .line 100
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method
