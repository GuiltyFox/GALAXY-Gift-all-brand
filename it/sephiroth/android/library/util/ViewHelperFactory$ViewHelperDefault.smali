.class public Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelperDefault;
.super Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;
.source "ViewHelperFactory.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;-><init>(Landroid/view/View;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 40
    const-string/jumbo v0, "ViewHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScrollX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelperDefault;->a:Landroid/view/View;

    iget-object v1, p0, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelperDefault;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 42
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelperDefault;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
