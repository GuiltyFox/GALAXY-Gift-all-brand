.class Lcom/koushikdutta/async/http/Headers$1;
.super Lcom/koushikdutta/async/http/Multimap;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/Headers;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/Headers;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/Headers;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/koushikdutta/async/http/Headers$1;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/koushikdutta/async/util/TaggedList;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/TaggedList;-><init>()V

    return-object v0
.end method
