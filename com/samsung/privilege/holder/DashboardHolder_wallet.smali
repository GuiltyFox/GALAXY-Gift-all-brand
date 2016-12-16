.class public Lcom/samsung/privilege/holder/DashboardHolder_wallet;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DashboardHolder_wallet.java"


# static fields
.field private static P:Ljava/lang/String;

.field private static Q:Landroid/app/ProgressDialog;

.field private static R:Z


# instance fields
.field A:Landroid/widget/RelativeLayout;

.field B:Landroid/widget/TextView;

.field protected C:Landroid/os/CountDownTimer;

.field D:Landroid/widget/ImageView;

.field E:Landroid/widget/TextView;

.field F:Landroid/widget/TextView;

.field G:Landroid/widget/TextView;

.field H:Landroid/widget/TextView;

.field I:Landroid/widget/LinearLayout;

.field J:Landroid/widget/LinearLayout;

.field K:Landroid/widget/ImageView;

.field L:Landroid/widget/LinearLayout;

.field M:Landroid/widget/LinearLayout;

.field public N:Landroid/widget/RelativeLayout;

.field public O:Landroid/widget/RelativeLayout;

.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/LinearLayout;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/RelativeLayout;

.field g:Landroid/widget/RelativeLayout;

.field h:Landroid/widget/RelativeLayout;

.field i:Landroid/widget/LinearLayout;

.field j:Landroid/widget/LinearLayout;

.field public k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/ProgressBar;

.field n:Landroid/widget/RelativeLayout;

.field o:Landroid/widget/ProgressBar;

.field p:Landroid/widget/RelativeLayout;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field public s:Landroid/widget/LinearLayout;

.field public t:Landroid/widget/LinearLayout;

.field u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/TextView;

.field x:Landroid/widget/TextView;

.field y:Landroid/widget/TextView;

.field z:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-class v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->P:Ljava/lang/String;

    .line 566
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->R:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 120
    const v0, 0x7f1001f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a:Landroid/view/View;

    .line 121
    const v0, 0x7f100224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->b:Landroid/view/View;

    .line 123
    const v0, 0x7f1001fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->c:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f100145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->d:Landroid/widget/LinearLayout;

    .line 126
    const v0, 0x7f100146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->e:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f100551

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->f:Landroid/widget/RelativeLayout;

    .line 129
    const v0, 0x7f1001fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->g:Landroid/widget/RelativeLayout;

    .line 130
    const v0, 0x7f1001fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->h:Landroid/widget/RelativeLayout;

    .line 132
    const v0, 0x7f100203

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->i:Landroid/widget/LinearLayout;

    .line 133
    const v0, 0x7f100143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->j:Landroid/widget/LinearLayout;

    .line 134
    const v0, 0x7f1001fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->k:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f100164

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->l:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f100208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->m:Landroid/widget/ProgressBar;

    .line 137
    const v0, 0x7f100204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->n:Landroid/widget/RelativeLayout;

    .line 138
    const v0, 0x7f100216

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->o:Landroid/widget/ProgressBar;

    .line 139
    const v0, 0x7f100213

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->p:Landroid/widget/RelativeLayout;

    .line 140
    const v0, 0x7f10015c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->q:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f10015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->r:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f100217

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->s:Landroid/widget/LinearLayout;

    .line 144
    const v0, 0x7f100218

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->t:Landroid/widget/LinearLayout;

    .line 145
    const v0, 0x7f100219

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->u:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f10021e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->v:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f10021f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->w:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f100221

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->x:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f100222

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->y:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f100223

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->z:Landroid/widget/ProgressBar;

    .line 153
    const v0, 0x7f10021c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->A:Landroid/widget/RelativeLayout;

    .line 154
    const v0, 0x7f10021d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->B:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f10014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->D:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f10014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->E:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f100153

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->F:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f100154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->G:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f10012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->H:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f10014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->I:Landroid/widget/LinearLayout;

    .line 163
    const v0, 0x7f10012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->J:Landroid/widget/LinearLayout;

    .line 164
    const v0, 0x7f10014b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->K:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f10014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->L:Landroid/widget/LinearLayout;

    .line 166
    const v0, 0x7f100151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->M:Landroid/widget/LinearLayout;

    .line 167
    const v0, 0x7f100201

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->N:Landroid/widget/RelativeLayout;

    .line 168
    const v0, 0x7f1006d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->O:Landroid/widget/RelativeLayout;

    .line 170
    return-void
.end method

.method static synthetic a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 1

    .prologue
    .line 60
    sput-object p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->Q:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->P:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
    .registers 15

    .prologue
    const v7, 0x7f090389

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/16 v5, 0x8

    .line 173
    move-object v2, p3

    check-cast v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    .line 174
    iput-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    .line 176
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->e:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 181
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->u:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->u:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 183
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->x:Landroid/widget/TextView;

    iget-object v1, p4, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->y:Landroid/widget/TextView;

    iget-object v1, p4, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->v:Landroid/widget/TextView;

    iget-object v1, p4, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p4, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_131

    .line 189
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    :goto_67
    iget-object v0, p4, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_168

    .line 210
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p4, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 215
    :goto_84
    iget-object v0, p4, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/bzbs/data/UserLogin;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_17f

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17f

    .line 217
    iget-object v1, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0903ad

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_c8
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_e9

    .line 223
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->B:Landroid/widget/TextView;

    const v1, 0x7f0900c4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 230
    :cond_e9
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->d:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$1;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$1;-><init>(Landroid/app/Activity;Lcom/samsung/privilege/holder/DashboardHolder_wallet;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;

    invoke-direct {v1, p0, v2, p2, p4}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$2;-><init>(Landroid/app/Activity;Lcom/samsung/privilege/holder/DashboardHolder_wallet;Landroid/os/Handler;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->n:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$3;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$3;-><init>(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v6, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->p:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$4;-><init>(Landroid/app/Activity;Lcom/samsung/privilege/holder/DashboardHolder_wallet;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    iget-object v7, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->t:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$5;-><init>(Landroid/app/Activity;Lcom/samsung/privilege/holder/DashboardHolder_wallet;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    const-string/jumbo v4, ""

    const-string/jumbo v5, "campaign_gift_mygift"

    move-object v3, p0

    move-object v6, p1

    move-object v7, v2

    invoke-static/range {v3 .. v8}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;Z)V

    .line 564
    return-void

    .line 196
    :cond_131
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_15e

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    .line 203
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->u:Landroid/widget/TextView;

    const-string/jumbo v1, "Please Activate"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_67

    .line 205
    :cond_15e
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->u:Landroid/widget/TextView;

    const-string/jumbo v1, "Please Login"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_67

    .line 212
    :cond_168
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p4, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_84

    .line 219
    :cond_17f
    iget-object v0, v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0903ad

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " 0.00 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c8
.end method

.method public static a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v6, 0x1

    .line 568
    sget-boolean v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->R:Z

    if-ne v0, v6, :cond_6

    .line 640
    :goto_5
    return-void

    .line 571
    :cond_6
    sput-boolean v6, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->R:Z

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallet/create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    sget-object v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->P:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doActivate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 581
    new-instance v2, Lcom/bzbs/util/DeviceHelper;

    invoke-direct {v2, p0}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 582
    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v2

    .line 584
    const-string/jumbo v3, "imei"

    invoke-virtual {v1, v3, v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 585
    sget-object v3, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->P:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imei="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string/jumbo v2, "issuer"

    invoke-virtual {v1, v2, p3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 588
    sget-object v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->P:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "issuer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string/jumbo v2, ""

    const v3, 0x7f090282

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->Q:Landroid/app/ProgressDialog;

    .line 591
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 592
    invoke-virtual {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 593
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 594
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 595
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 596
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 597
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v6

    new-instance v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$6;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/os/Handler;)V

    .line 598
    invoke-virtual {v6, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V
    .registers 3

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;)V
    .registers 4

    .prologue
    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;)V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;)V
    .registers 12

    .prologue
    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?device_app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    if-eqz p1, :cond_55

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&locationagencyid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 719
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&byConfig=true&config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&format=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    sget-object v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->P:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wallet_promotion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v1, p4, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->m:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 725
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 726
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 727
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 728
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 729
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 730
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v6

    new-instance v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$8;-><init>(Landroid/app/Activity;Lcom/samsung/privilege/holder/DashboardHolder_wallet;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v6, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 772
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 773
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;Z)V
    .registers 6

    .prologue
    .line 60
    invoke-static/range {p0 .. p5}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;Z)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 60
    sput-boolean p0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->R:Z

    return p0
.end method

.method static synthetic b()Landroid/app/ProgressDialog;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->Q:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 777
    if-eqz p0, :cond_12f

    .line 778
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 780
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v0

    .line 781
    :goto_e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12e

    move-result v0

    if-ge v1, v0, :cond_130

    .line 783
    :try_start_14
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 785
    new-instance v4, Lcom/bzbs/bean/DashboardItem;

    invoke-direct {v4}, Lcom/bzbs/bean/DashboardItem;-><init>()V

    .line 786
    const-string/jumbo v5, "campaign"

    iput-object v5, v4, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    .line 787
    const-string/jumbo v5, "small"

    iput-object v5, v4, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    .line 788
    const-string/jumbo v5, "ID"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/bzbs/bean/DashboardItem;->id:I

    .line 789
    const-string/jumbo v5, "AgencyName"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 790
    const-string/jumbo v5, "Name"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 791
    const-string/jumbo v5, "Type"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    .line 792
    const-string/jumbo v5, "PointPerUnit"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    .line 793
    const-string/jumbo v5, "Barcode"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bzbs/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    .line 794
    const-string/jumbo v5, "Discount"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/bzbs/bean/DashboardItem;->campaigndiscount:I

    .line 795
    const-string/jumbo v5, "FullImageUrl"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 796
    const-string/jumbo v5, "premium"

    iput-object v5, v4, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    .line 797
    const-string/jumbo v5, "premium"

    iput-object v5, v4, Lcom/bzbs/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    .line 798
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    .line 800
    new-instance v5, Ljava/text/DecimalFormat;

    const-string/jumbo v6, "#,###,###"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 801
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0900d1

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Qty"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bzbs/bean/DashboardItem;->campaignremaining:Ljava/lang/String;

    .line 803
    const-string/jumbo v5, "ExpireDate"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v5, "CurrentDate"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 804
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_105

    .line 805
    const-wide/32 v8, 0x15180

    div-long/2addr v6, v8

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0900d2

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v5, 0x7f0900d3

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/bzbs/bean/DashboardItem;->campaignstatus:Ljava/lang/String;

    .line 811
    :goto_fd
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    :goto_100
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_e

    .line 808
    :cond_105
    const v0, 0x7f0900d4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/bzbs/bean/DashboardItem;->campaignstatus:Ljava/lang/String;
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_10e} :catch_10f

    goto :goto_fd

    .line 812
    :catch_10f
    move-exception v0

    .line 813
    :try_start_110
    sget-object v4, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->P:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(processJsonPremium):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_100

    .line 832
    :catch_12e
    move-exception v0

    .line 835
    :cond_12f
    :goto_12f
    return-void

    .line 830
    :cond_130
    invoke-virtual {p2, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/util/ArrayList;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_133} :catch_12e

    goto :goto_12f
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;)V
    .registers 8

    .prologue
    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "card/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/history"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 839
    sget-object v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->P:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wallet_history="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v1, p3, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->o:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 842
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 843
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 844
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 845
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 846
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 847
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$9;-><init>(Landroid/app/Activity;Lcom/samsung/privilege/holder/DashboardHolder_wallet;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)V

    .line 848
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 894
    return-void
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;Z)V
    .registers 10

    .prologue
    .line 688
    const/4 v0, 0x1

    if-ne p5, v0, :cond_7

    .line 689
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;)V

    .line 709
    :cond_6
    :goto_6
    return-void

    .line 691
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dashboard_wallet_promotion_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 692
    sget-object v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->P:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "catch_wallet_promotion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 695
    :try_start_4c
    invoke-static {p0, v0, p3}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_80

    .line 700
    :goto_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dashboard_wallet_promotion_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bzbs/util/LocalFileHelper;->c(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 702
    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 703
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;)V

    goto :goto_6

    .line 706
    :cond_7c
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/holder/DashboardHolder_wallet;)V

    goto :goto_6

    .line 696
    :catch_80
    move-exception v0

    goto :goto_4f
.end method

.method private static b(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 643
    const v0, 0x7f05004c

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 644
    new-instance v1, Lcom/samsung/privilege/holder/DashboardHolder_wallet$7;

    invoke-direct {v1, p1, p0, p2}, Lcom/samsung/privilege/holder/DashboardHolder_wallet$7;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 682
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 683
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 684
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 685
    return-void
.end method
