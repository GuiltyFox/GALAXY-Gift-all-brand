.class Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# instance fields
.field final synthetic a:Landroid/support/v4/widget/CursorAdapter;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/CursorAdapter;)V
    .registers 2

    .prologue
    .line 478
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/CursorAdapter;Landroid/support/v4/widget/CursorAdapter$1;)V
    .registers 3

    .prologue
    .line 478
    invoke-direct {p0, p1}, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/support/v4/widget/CursorAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->a:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    .line 482
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 483
    return-void
.end method

.method public onInvalidated()V
    .registers 3

    .prologue
    .line 487
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->a:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    .line 488
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 489
    return-void
.end method
