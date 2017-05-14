.class Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;->a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/OnApplyWindowInsetsListener;

.field final synthetic b:Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    .prologue
    .line 1638
    iput-object p1, p0, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;->b:Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;

    iput-object p2, p0, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;->a:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1641
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->a(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    .line 1642
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;->a:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    .line 1643
    invoke-static {v0}, Landroid/support/v4/view/WindowInsetsCompat;->a(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
