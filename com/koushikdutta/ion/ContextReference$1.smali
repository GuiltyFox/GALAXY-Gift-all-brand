.class final Lcom/koushikdutta/ion/ContextReference$1;
.super Lcom/koushikdutta/ion/ContextReference$NormalContextReference;
.source "ContextReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/ContextReference;->a(Landroid/content/Context;)Lcom/koushikdutta/ion/ContextReference;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/ion/ContextReference$NormalContextReference",
        "<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/ContextReference$NormalContextReference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/koushikdutta/ion/ContextReference$1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 174
    if-nez v0, :cond_c

    .line 175
    const-string/jumbo v0, "Context reference null"

    .line 176
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
