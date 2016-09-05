.class public final Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Runnable;

.field private d:Ljava/lang/Runnable;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 659
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 660
    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 661
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    .line 673
    :goto_d
    return-void

    .line 662
    :cond_e
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1a

    .line 663
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_d

    .line 664
    :cond_1a
    const/16 v1, 0x12

    if-lt v0, v1, :cond_26

    .line 665
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_d

    .line 666
    :cond_26
    const/16 v1, 0x10

    if-lt v0, v1, :cond_32

    .line 667
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_d

    .line 668
    :cond_32
    const/16 v1, 0xe

    if-lt v0, v1, :cond_3e

    .line 669
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_d

    .line 671
    :cond_3e
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    goto :goto_d
.end method

.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->c:Ljava/lang/Runnable;

    .line 29
    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->d:Ljava/lang/Runnable;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->e:I

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method

.method static synthetic a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)I
    .registers 2

    .prologue
    .line 25
    iput p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->e:I

    return p1
.end method

.method static synthetic a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->d:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->c:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic c(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->e:I

    return v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 809
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 810
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J

    move-result-wide v0

    .line 812
    :goto_10
    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_10
.end method

.method public a(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .prologue
    .line 705
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 706
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    .line 708
    :cond_f
    return-object p0
.end method

.method public a(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 6

    .prologue
    .line 688
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 689
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V

    .line 691
    :cond_f
    return-object p0
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .prologue
    .line 1328
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 1329
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V

    .line 1331
    :cond_f
    return-object p0
.end method

.method public a(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .prologue
    .line 1347
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 1348
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)V

    .line 1350
    :cond_f
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .prologue
    .line 828
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 829
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 831
    :cond_f
    return-object p0
.end method

.method public b(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .prologue
    .line 739
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 740
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    .line 742
    :cond_f
    return-object p0
.end method

.method public b(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 6

    .prologue
    .line 862
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 863
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V

    .line 865
    :cond_f
    return-object p0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 1062
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 1063
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->b(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 1065
    :cond_f
    return-void
.end method

.method public c(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .prologue
    .line 756
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 757
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->c(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V

    .line 759
    :cond_f
    return-object p0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 1248
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 1249
    sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->a:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->c(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 1251
    :cond_f
    return-void
.end method
