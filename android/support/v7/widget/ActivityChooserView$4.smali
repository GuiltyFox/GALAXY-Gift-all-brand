.class Landroid/support/v7/widget/ActivityChooserView$4;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserView;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$4;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 269
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$4;->a:Landroid/support/v7/widget/ActivityChooserView;

    # invokes: Landroid/support/v7/widget/ActivityChooserView;->updateAppearance()V
    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->access$400(Landroid/support/v7/widget/ActivityChooserView;)V

    .line 270
    return-void
.end method
