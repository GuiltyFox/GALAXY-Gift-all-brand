.class public Lit/sephiroth/android/library/widget/AdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# instance fields
.field public a:Landroid/view/View;

.field public b:I

.field public c:J


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .registers 6

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterContextMenuInfo;->a:Landroid/view/View;

    .line 409
    iput p2, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterContextMenuInfo;->b:I

    .line 410
    iput-wide p3, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterContextMenuInfo;->c:J

    .line 411
    return-void
.end method
