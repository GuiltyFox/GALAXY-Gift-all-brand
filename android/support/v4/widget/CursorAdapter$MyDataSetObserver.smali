.class Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# instance fields
.field final synthetic a:Landroid/support/v4/widget/CursorAdapter;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/CursorAdapter;)V
    .registers 2

    .prologue
    .line 491
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 492
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 496
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->a:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    .line 497
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 498
    return-void
.end method

.method public onInvalidated()V
    .registers 3

    .prologue
    .line 502
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->a:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    .line 503
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 504
    return-void
.end method
