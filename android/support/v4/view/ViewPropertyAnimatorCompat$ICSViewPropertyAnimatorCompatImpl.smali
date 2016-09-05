.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.super Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;
.source "ViewPropertyAnimatorCompat.java"


# instance fields
.field b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 364
    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;->b:Ljava/util/WeakHashMap;

    .line 526
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
    .registers 5

    .prologue
    .line 389
    invoke-static {p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS;->a(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .prologue
    .line 374
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS;->a(Landroid/view/View;F)V

    .line 375
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
    .registers 6

    .prologue
    .line 369
    invoke-static {p2, p3, p4}, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS;->a(Landroid/view/View;J)V

    .line 370
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
    .registers 5

    .prologue
    .line 504
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 505
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS;->a(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V

    .line 506
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .registers 4

    .prologue
    .line 394
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS;->a(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 395
    return-void
.end method

.method public b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 464
    invoke-static {p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS;->b(Landroid/view/View;)V

    .line 465
    return-void
.end method

.method public b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .prologue
    .line 379
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS;->b(Landroid/view/View;F)V

    .line 380
    return-void
.end method

.method public b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
    .registers 6

    .prologue
    .line 399
    invoke-static {p2, p3, p4}, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS;->b(Landroid/view/View;J)V

    .line 400
    return-void
.end method

.method public c(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 499
    invoke-static {p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS;->c(Landroid/view/View;)V

    .line 500
    return-void
.end method

.method public c(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .registers 4

    .prologue
    .line 384
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatICS;->c(Landroid/view/View;F)V

    .line 385
    return-void
.end method
