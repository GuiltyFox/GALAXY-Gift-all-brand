.class final Lcom/koushikdutta/async/http/Multimap$2;
.super Ljava/lang/Object;
.source "Multimap.java"

# interfaces
.implements Lcom/koushikdutta/async/http/Multimap$StringDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/Multimap;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 104
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
