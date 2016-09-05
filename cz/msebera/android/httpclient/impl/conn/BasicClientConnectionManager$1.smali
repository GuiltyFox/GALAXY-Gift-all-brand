.class Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;
.super Ljava/lang/Object;
.source "BasicClientConnectionManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
.end annotation


# instance fields
.field final synthetic a:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 134
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;->c:Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;->a:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .registers 7

    .prologue
    .line 142
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;->c:Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;->a:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->b(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 138
    return-void
.end method
