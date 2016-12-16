.class public Lcom/samsung/privilege/fragment/ReplyFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "ReplyFragment.java"


# instance fields
.field btnPost:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10042b
    .end annotation
.end field

.field contentCancel:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100699
    .end annotation
.end field

.field contentImagePost:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100697
    .end annotation
.end field

.field contentPost:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100694
    .end annotation
.end field

.field edtTextComment:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10069a
    .end annotation
.end field

.field private g:Lcom/bzbs/marketplace/model/review/ReviewModel;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/review/ReviewModel;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

.field imagePost:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100698
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100642
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Landroid/support/v7/widget/LinearLayoutManager;

.field private r:I

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100695
    .end annotation
.end field

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

.field private x:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 77
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->j:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->k:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->l:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->m:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->n:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->o:Z

    .line 86
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->p:Z

    .line 88
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->r:I

    .line 89
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/ReplyFragment;I)I
    .registers 2

    .prologue
    .line 48
    iput p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->u:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/ReplyFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->q:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/ReplyFragment;Lcom/bzbs/marketplace/model/review/ReviewModel;)Lcom/bzbs/marketplace/model/review/ReviewModel;
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->g:Lcom/bzbs/marketplace/model/review/ReviewModel;

    return-object p1
.end method

.method public static a(Lcom/bzbs/marketplace/model/review/ReviewModel;)Lcom/samsung/privilege/fragment/ReplyFragment;
    .registers 5

    .prologue
    .line 97
    new-instance v0, Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-direct {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;-><init>()V

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    const-string/jumbo v2, "Reply@Data"

    invoke-static {p0}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/ReplyFragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/privilege/fragment/ReplyFragment;
    .registers 5

    .prologue
    .line 105
    new-instance v0, Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-direct {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;-><init>()V

    .line 106
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    const-string/jumbo v2, "Reply@BuzzKey"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v2, "Reply@Notification"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/ReplyFragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    return-object v0
.end method

.method private a(Z)V
    .registers 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/privilege/activity/ReplyActivity;

    if-eqz v0, :cond_10

    .line 346
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/privilege/activity/ReplyActivity;

    if-eqz p1, :cond_11

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/ReplyActivity;->c(I)V

    .line 348
    :cond_10
    return-void

    .line 346
    :cond_11
    const/16 v1, 0x8

    goto :goto_d
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/ReplyFragment;Z)Z
    .registers 2

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/ReplyFragment;I)I
    .registers 2

    .prologue
    .line 48
    iput p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->v:I

    return p1
.end method

.method private b()V
    .registers 3

    .prologue
    .line 138
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->q:Landroid/support/v7/widget/LinearLayoutManager;

    .line 139
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->i:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    .line 140
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->q:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->i:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/fragment/ReplyFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/ReplyFragment$1;-><init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/samsung/privilege/fragment/ReplyFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/ReplyFragment$2;-><init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 169
    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/ReplyFragment;Z)V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/ReplyFragment;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->a(Z)V

    .line 173
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlReviewUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->w:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    .line 175
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->w:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    new-instance v1, Lcom/samsung/privilege/fragment/ReplyFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/ReplyFragment$3;-><init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->a(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackModel;)V

    .line 190
    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/ReplyFragment;)Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->s:Z

    return v0
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/ReplyFragment;)I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->u:I

    return v0
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/ReplyFragment;I)I
    .registers 2

    .prologue
    .line 48
    iput p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->t:I

    return p1
.end method

.method private c()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 193
    invoke-direct {p0, v2}, Lcom/samsung/privilege/fragment/ReplyFragment;->a(Z)V

    .line 194
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_21

    .line 196
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getRowKey()Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_21
    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->g:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/privilege/fragment/ReplyFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/fragment/ReplyFragment$4;-><init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    invoke-virtual {v1, v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->a(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;)V

    .line 228
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/ReplyFragment;Z)Z
    .registers 2

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->p:Z

    return p1
.end method

.method static synthetic d(Lcom/samsung/privilege/fragment/ReplyFragment;)I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->t:I

    return v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->p:Z

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->h:Ljava/util/ArrayList;

    .line 234
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->g:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->c()V

    .line 236
    return-void
.end method

.method static synthetic d(Lcom/samsung/privilege/fragment/ReplyFragment;Z)Z
    .registers 2

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->o:Z

    return p1
.end method

.method static synthetic e(Lcom/samsung/privilege/fragment/ReplyFragment;)I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->v:I

    return v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->i:Lcom/bzbs/marketplace/adapter/ReplyAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/ReplyAdapter;->a(Ljava/util/ArrayList;)V

    .line 241
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_a

    .line 246
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 248
    :cond_a
    return-void
.end method

.method static synthetic f(Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->c()V

    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 323
    return-void
.end method

.method static synthetic g(Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->d()V

    return-void
.end method

.method static synthetic h(Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->f()V

    return-void
.end method

.method static synthetic i(Lcom/samsung/privilege/fragment/ReplyFragment;)Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->o:Z

    return v0
.end method

.method static synthetic j(Lcom/samsung/privilege/fragment/ReplyFragment;)Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->p:Z

    return v0
.end method

.method static synthetic k(Lcom/samsung/privilege/fragment/ReplyFragment;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lcom/samsung/privilege/fragment/ReplyFragment;)V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->e()V

    return-void
.end method


# virtual methods
.method protected a()I
    .registers 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 116
    const v0, 0x7f040151

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->g()V

    .line 123
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->b()V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "Reply@Notification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 126
    if-eqz v0, :cond_23

    .line 127
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "Reply@BuzzKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->b(Ljava/lang/String;)V

    .line 135
    :goto_22
    return-void

    .line 131
    :cond_23
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "Reply@Data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lorg/parceler/Parcels;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->g:Lcom/bzbs/marketplace/model/review/ReviewModel;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->h:Ljava/util/ArrayList;

    .line 133
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->d()V

    goto :goto_22
.end method

.method public onClickPost(Landroid/view/View;)V
    .registers 7
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10042b
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/buzz/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->g:Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/comments?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 272
    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_84

    .line 273
    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->m:Ljava/lang/String;

    .line 274
    const-string/jumbo v2, "message"

    iget-object v3, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->e()V

    .line 284
    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->edtTextComment:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/ReplyFragment;->g()V

    .line 289
    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->a:Landroid/app/Activity;

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    iput-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->x:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 290
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->x:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v1, Lcom/samsung/privilege/fragment/ReplyFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/ReplyFragment$5;-><init>(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 319
    :cond_84
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 336
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroyView()V

    .line 337
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->w:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    if-eqz v0, :cond_c

    .line 338
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->w:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->a()V

    .line 340
    :cond_c
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->x:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    if-eqz v0, :cond_15

    .line 341
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment;->x:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b()V

    .line 342
    :cond_15
    return-void
.end method
