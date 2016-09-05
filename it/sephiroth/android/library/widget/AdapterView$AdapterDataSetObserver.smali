.class Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# instance fields
.field private a:Landroid/os/Parcelable;

.field final synthetic b:Lit/sephiroth/android/library/widget/AdapterView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AdapterView;)V
    .registers 3

    .prologue
    .line 808
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->a:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 817
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->aj:Z

    .line 818
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iget v1, v1, Lit/sephiroth/android/library/widget/AdapterView;->ao:I

    iput v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->ap:I

    .line 819
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AdapterView;->s()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->ao:I

    .line 824
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->s()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AdapterView;->ap:I

    if-nez v0, :cond_4c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AdapterView;->ao:I

    if-lez v0, :cond_4c

    .line 829
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->a:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->a:Landroid/os/Parcelable;

    .line 837
    :goto_41
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->u()V

    .line 838
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->requestLayout()V

    .line 839
    return-void

    .line 835
    :cond_4c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->y()V

    goto :goto_41
.end method

.method public onInvalidated()V
    .registers 7

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 846
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->aj:Z

    .line 848
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->s()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 851
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AdapterView;->a(Lit/sephiroth/android/library/widget/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->a:Landroid/os/Parcelable;

    .line 855
    :cond_1d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iget v1, v1, Lit/sephiroth/android/library/widget/AdapterView;->ao:I

    iput v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->ap:I

    .line 856
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iput v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->ao:I

    .line 857
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iput v2, v0, Lit/sephiroth/android/library/widget/AdapterView;->am:I

    .line 858
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iput-wide v4, v0, Lit/sephiroth/android/library/widget/AdapterView;->an:J

    .line 859
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iput v2, v0, Lit/sephiroth/android/library/widget/AdapterView;->ak:I

    .line 860
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iput-wide v4, v0, Lit/sephiroth/android/library/widget/AdapterView;->al:J

    .line 861
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    iput-boolean v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->ad:Z

    .line 863
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->u()V

    .line 864
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$AdapterDataSetObserver;->b:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->requestLayout()V

    .line 865
    return-void
.end method
