.class public final Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;
.super Ljava/lang/Object;
.source "ConnPerRouteBean.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->a(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I
    .registers 3

    .prologue
    .line 90
    const-string/jumbo v0, "HTTP route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 92
    if-eqz v0, :cond_15

    .line 93
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 95
    :goto_14
    return v0

    :cond_15
    iget v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->b:I

    goto :goto_14
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 79
    const-string/jumbo v0, "Defautl max per route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(ILjava/lang/String;)I

    .line 80
    iput p1, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->b:I

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
