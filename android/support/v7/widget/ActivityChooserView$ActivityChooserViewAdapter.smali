.class Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActivityChooserView;

.field private b:Landroid/support/v7/widget/ActivityChooserModel;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActivityChooserView;)V
    .registers 3

    .prologue
    .line 642
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 656
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->c:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActivityChooserView;Landroid/support/v7/widget/ActivityChooserView$1;)V
    .registers 3

    .prologue
    .line 642
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/support/v7/widget/ActivityChooserView;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 767
    iget v4, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->c:I

    .line 768
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->c:I

    .line 773
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 774
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 775
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v7

    move-object v1, v2

    move v3, v0

    .line 777
    :goto_17
    if-ge v0, v7, :cond_2b

    .line 778
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 779
    invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 780
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 783
    :cond_2b
    iput v4, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->c:I

    .line 785
    return v3
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 789
    iget v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->c:I

    if-eq v0, p1, :cond_9

    .line 790
    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->c:I

    .line 791
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 793
    :cond_9
    return-void
.end method

.method public a(Landroid/support/v7/widget/ActivityChooserModel;)V
    .registers 4

    .prologue
    .line 665
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->a:Landroid/support/v7/widget/ActivityChooserView;

    # getter for: Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->access$000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->e()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_1d

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 667
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->a:Landroid/support/v7/widget/ActivityChooserView;

    # getter for: Landroid/support/v7/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Landroid/support/v7/widget/ActivityChooserView;->access$1100(Landroid/support/v7/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 669
    :cond_1d
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->b:Landroid/support/v7/widget/ActivityChooserModel;

    .line 670
    if-eqz p1, :cond_32

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->a:Landroid/support/v7/widget/ActivityChooserView;

    # getter for: Landroid/support/v7/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;
    invoke-static {v0}, Landroid/support/v7/widget/ActivityChooserView;->access$1100(Landroid/support/v7/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 673
    :cond_32
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 674
    return-void
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 800
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->f:Z

    if-eq v0, p1, :cond_9

    .line 801
    iput-boolean p1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->f:Z

    .line 802
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 804
    :cond_9
    return-void
.end method

.method public a(ZZ)V
    .registers 4

    .prologue
    .line 820
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->d:Z

    if-ne v0, p1, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->e:Z

    if-eq v0, p2, :cond_f

    .line 822
    :cond_8
    iput-boolean p1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->d:Z

    .line 823
    iput-boolean p2, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->e:Z

    .line 824
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 826
    :cond_f
    return-void
.end method

.method public b()Landroid/content/pm/ResolveInfo;
    .registers 2

    .prologue
    .line 796
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->b:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserModel;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 807
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->b:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserModel;->a()I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 811
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->b:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserModel;->c()I

    move-result v0

    return v0
.end method

.method public e()Landroid/support/v7/widget/ActivityChooserModel;
    .registers 2

    .prologue
    .line 815
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->b:Landroid/support/v7/widget/ActivityChooserModel;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 829
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->d:Z

    return v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 692
    .line 693
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->b:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserModel;->a()I

    move-result v0

    .line 694
    iget-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->d:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->b:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserModel;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 695
    add-int/lit8 v0, v0, -0x1

    .line 697
    :cond_14
    iget v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 698
    iget-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->f:Z

    if-eqz v1, :cond_20

    .line 699
    add-int/lit8 v0, v0, 0x1

    .line 701
    :cond_20
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 706
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 707
    packed-switch v0, :pswitch_data_24

    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 709
    :pswitch_d
    const/4 v0, 0x0

    .line 714
    :goto_e
    return-object v0

    .line 711
    :pswitch_f
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->d:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->b:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserModel;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 712
    add-int/lit8 p1, p1, 0x1

    .line 714
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->b:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActivityChooserModel;->a(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_e

    .line 707
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 722
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .prologue
    .line 678
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->f:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_e

    .line 679
    const/4 v0, 0x1

    .line 681
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 727
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 728
    packed-switch v0, :pswitch_data_9c

    .line 760
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 730
    :pswitch_f
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v5, :cond_41

    .line 731
    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 733
    invoke-virtual {p2, v5}, Landroid/view/View;->setId(I)V

    .line 734
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 735
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    :cond_41
    :goto_41
    return-object p2

    .line 740
    :pswitch_42
    if-eqz p2, :cond_4c

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v7/appcompat/R$id;->list_item:I

    if-eq v0, v1, :cond_5c

    .line 741
    :cond_4c
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 744
    :cond_5c
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->a:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 746
    sget v0, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 747
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 748
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 750
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 751
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->d:Z

    if-eqz v0, :cond_98

    if-nez p1, :cond_98

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->e:Z

    if-eqz v0, :cond_98

    .line 754
    invoke-static {p2, v5}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;Z)V

    goto :goto_41

    .line 756
    :cond_98
    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;Z)V

    goto :goto_41

    .line 728
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_42
        :pswitch_f
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 687
    const/4 v0, 0x3

    return v0
.end method
