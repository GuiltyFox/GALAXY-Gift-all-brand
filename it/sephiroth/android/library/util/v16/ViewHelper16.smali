.class public Lit/sephiroth/android/library/util/v16/ViewHelper16;
.super Lit/sephiroth/android/library/util/v14/ViewHelper14;
.source "ViewHelper16.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/util/v14/ViewHelper14;-><init>(Landroid/view/View;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lit/sephiroth/android/library/util/v16/ViewHelper16;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 18
    return-void
.end method
