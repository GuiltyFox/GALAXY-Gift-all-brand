.class Landroid/support/design/widget/AppBarLayout$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/AppBarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/AppBarLayout;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$1;->this$0:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$1;->this$0:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/AppBarLayout;->onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
