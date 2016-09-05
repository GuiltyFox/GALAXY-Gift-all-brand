.class public Landroid/support/v7/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# instance fields
.field public A:I

.field public B:Z

.field public C:[Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public H:Landroid/database/Cursor;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public L:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public M:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/content/DialogInterface$OnClickListener;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Ljava/lang/CharSequence;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Z

.field public p:Landroid/content/DialogInterface$OnCancelListener;

.field public q:Landroid/content/DialogInterface$OnDismissListener;

.field public r:Landroid/content/DialogInterface$OnKeyListener;

.field public s:[Ljava/lang/CharSequence;

.field public t:Landroid/widget/ListAdapter;

.field public u:Landroid/content/DialogInterface$OnClickListener;

.field public v:I

.field public w:Landroid/view/View;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->c:I

    .line 766
    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->e:I

    .line 789
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->B:Z

    .line 793
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->F:I

    .line 801
    iput-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->M:Z

    .line 817
    iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams;->a:Landroid/content/Context;

    .line 818
    iput-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->o:Z

    .line 819
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->b:Landroid/view/LayoutInflater;

    .line 820
    return-void
.end method

.method private b(Landroid/support/v7/app/AlertController;)V
    .registers 12

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 880
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->b:Landroid/view/LayoutInflater;

    invoke-static {p1}, Landroid/support/v7/app/AlertController;->k(Landroid/support/v7/app/AlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 883
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->D:Z

    if-eqz v0, :cond_66

    .line 884
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->H:Landroid/database/Cursor;

    if-nez v0, :cond_59

    .line 885
    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams$1;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v7/app/AlertController;->l(Landroid/support/v7/app/AlertController;)I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->s:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/AlertController$AlertParams$1;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 945
    :goto_28
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->L:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_31

    .line 946
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->L:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;->a(Landroid/widget/ListView;)V

    .line 952
    :cond_31
    invoke-static {p1, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/support/v7/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 953
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->F:I

    invoke-static {p1, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/support/v7/app/AlertController;I)I

    .line 955
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->u:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_9e

    .line 956
    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams$3;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AlertController$AlertParams$3;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 979
    :cond_45
    :goto_45
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->K:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_4e

    .line 980
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->K:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 983
    :cond_4e
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->E:Z

    if-eqz v0, :cond_ab

    .line 984
    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 988
    :cond_55
    :goto_55
    invoke-static {p1, v6}, Landroid/support/v7/app/AlertController;->a(Landroid/support/v7/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 989
    return-void

    .line 900
    :cond_59
    new-instance v1, Landroid/support/v7/app/AlertController$AlertParams$2;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->a:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->H:Landroid/database/Cursor;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/app/AlertController$AlertParams$2;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Landroid/support/v7/app/AlertController;)V

    move-object v0, v1

    goto :goto_28

    .line 929
    :cond_66
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->E:Z

    if-eqz v0, :cond_88

    .line 930
    invoke-static {p1}, Landroid/support/v7/app/AlertController;->m(Landroid/support/v7/app/AlertController;)I

    move-result v2

    .line 935
    :goto_6e
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->H:Landroid/database/Cursor;

    if-eqz v0, :cond_8d

    .line 936
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->H:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Landroid/support/v7/app/AlertController$AlertParams;->I:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_28

    .line 932
    :cond_88
    invoke-static {p1}, Landroid/support/v7/app/AlertController;->n(Landroid/support/v7/app/AlertController;)I

    move-result v2

    goto :goto_6e

    .line 938
    :cond_8d
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_94

    .line 939
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->t:Landroid/widget/ListAdapter;

    goto :goto_28

    .line 941
    :cond_94
    new-instance v0, Landroid/support/v7/app/AlertController$CheckedItemAdapter;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->s:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/support/v7/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto :goto_28

    .line 965
    :cond_9e
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_45

    .line 966
    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams$4;

    invoke-direct {v0, p0, v6, p1}, Landroid/support/v7/app/AlertController$AlertParams$4;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/widget/ListView;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_45

    .line 985
    :cond_ab
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->D:Z

    if-eqz v0, :cond_55

    .line 986
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_55
.end method


# virtual methods
.method public a(Landroid/support/v7/app/AlertController;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 823
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->g:Landroid/view/View;

    if-eqz v0, :cond_5d

    .line 824
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->b(Landroid/view/View;)V

    .line 839
    :cond_a
    :goto_a
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    .line 840
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->b(Ljava/lang/CharSequence;)V

    .line 842
    :cond_13
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1f

    .line 843
    const/4 v0, -0x1

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->i:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 846
    :cond_1f
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2b

    .line 847
    const/4 v0, -0x2

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->k:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 850
    :cond_2b
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_37

    .line 851
    const/4 v0, -0x3

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->m:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 856
    :cond_37
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->s:[Ljava/lang/CharSequence;

    if-nez v0, :cond_43

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->H:Landroid/database/Cursor;

    if-nez v0, :cond_43

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_46

    .line 857
    :cond_43
    invoke-direct {p0, p1}, Landroid/support/v7/app/AlertController$AlertParams;->b(Landroid/support/v7/app/AlertController;)V

    .line 859
    :cond_46
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->w:Landroid/view/View;

    if-eqz v0, :cond_8c

    .line 860
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->B:Z

    if-eqz v0, :cond_86

    .line 861
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->w:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->x:I

    iget v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->y:I

    iget v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->z:I

    iget v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->A:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;IIII)V

    .line 877
    :cond_5c
    :goto_5c
    return-void

    .line 826
    :cond_5d
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_66

    .line 827
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 829
    :cond_66
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6f

    .line 830
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/graphics/drawable/Drawable;)V

    .line 832
    :cond_6f
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->c:I

    if-eqz v0, :cond_78

    .line 833
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->c:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->b(I)V

    .line 835
    :cond_78
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->e:I

    if-eqz v0, :cond_a

    .line 836
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->e:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->c(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->b(I)V

    goto :goto_a

    .line 864
    :cond_86
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->w:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->c(Landroid/view/View;)V

    goto :goto_5c

    .line 866
    :cond_8c
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->v:I

    if-eqz v0, :cond_5c

    .line 867
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->v:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->a(I)V

    goto :goto_5c
.end method
