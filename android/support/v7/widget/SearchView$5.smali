.class Landroid/support/v7/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorSDK11()V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .registers 2

    .prologue
    .line 402
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$5;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 11

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$5;->a:Landroid/support/v7/widget/SearchView;

    # invokes: Landroid/support/v7/widget/SearchView;->adjustDropDownSizeAndPosition()V
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$300(Landroid/support/v7/widget/SearchView;)V

    .line 407
    return-void
.end method
