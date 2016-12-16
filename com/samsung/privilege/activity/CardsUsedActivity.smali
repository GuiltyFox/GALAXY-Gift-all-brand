.class public Lcom/samsung/privilege/activity/CardsUsedActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CardsUsedActivity.java"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field b:Landroid/os/Handler;

.field c:Ljava/lang/String;

.field d:Landroid/app/ProgressDialog;

.field protected e:Landroid/os/CountDownTimer;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/FrameLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/LinearLayout;

.field private r:Lcom/bzbs/bean/CardsList;

.field private s:Ljava/text/DecimalFormat;

.field private t:Z

.field private u:Z

.field private v:Landroid/support/v7/widget/RecyclerView;

.field private w:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private x:Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const-class v0, Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->b:Landroid/os/Handler;

    .line 67
    const-string/jumbo v0, "history_card"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->c:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->s:Ljava/text/DecimalFormat;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->t:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->u:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CardsUsedActivity;Lcom/bzbs/bean/CardsList;)Lcom/bzbs/bean/CardsList;
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    return-object p1
.end method

.method private a(IZ)V
    .registers 6

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 383
    const v1, 0x7f0400da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_16

    .line 424
    if-eqz p2, :cond_17

    .line 425
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->i:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 430
    :cond_16
    :goto_16
    return-void

    .line 427
    :cond_17
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_16
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->g()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CardsUsedActivity;ZLjava/lang/String;)V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .registers 9

    .prologue
    const/16 v1, 0x8

    const/4 v3, -0x1

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    .line 652
    const-string/jumbo v0, ""

    .line 654
    if-eqz p1, :cond_8a

    .line 656
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    const-string/jumbo v0, "CODE_128"

    .line 660
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->a(F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 662
    :try_start_21
    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->l:Landroid/widget/ImageView;

    invoke-static {v0, p2, v2}, Lcom/samsung/privilege/util/BarcodeUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v0

    .line 663
    new-instance v2, Lcom/bzbs/zxing/QRCodeEncoder;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V

    .line 664
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_34} :catch_6a

    .line 666
    :try_start_34
    invoke-virtual {v2}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3d
    .catch Lcom/google/zxing/WriterException; {:try_start_34 .. :try_end_3d} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_6a

    .line 696
    :goto_3d
    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 697
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 698
    return-void

    .line 668
    :catch_4a
    move-exception v0

    .line 669
    :try_start_4b
    const-string/jumbo v1, "ZXING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(WriterException):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_69} :catch_6a

    goto :goto_3d

    .line 671
    :catch_6a
    move-exception v0

    .line 672
    const-string/jumbo v1, "ZXING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 676
    :cond_8a
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    const-string/jumbo v0, "QR_CODE"

    .line 680
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->a(F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 682
    :try_start_a0
    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->l:Landroid/widget/ImageView;

    invoke-static {v0, p2, v2}, Lcom/samsung/privilege/util/BarcodeUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v0

    .line 683
    new-instance v2, Lcom/bzbs/zxing/QRCodeEncoder;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V

    .line 684
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b3} :catch_de

    .line 686
    :try_start_b3
    invoke-virtual {v2}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_bc
    .catch Lcom/google/zxing/WriterException; {:try_start_b3 .. :try_end_bc} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_bc} :catch_de

    goto :goto_3d

    .line 688
    :catch_bd
    move-exception v0

    .line 689
    :try_start_be
    const-string/jumbo v1, "ZXING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(WriterException):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_dc} :catch_de

    goto/16 :goto_3d

    .line 691
    :catch_de
    move-exception v0

    .line 692
    const-string/jumbo v1, "ZXING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CardsUsedActivity;Z)Z
    .registers 2

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->x:Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    const-string/jumbo v1, "cardslist_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CardsList;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v1, v1, Lcom/bzbs/bean/CardsList;->cardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->c:Ljava/lang/String;

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->u:Z

    .line 207
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->u:Z

    if-eqz v0, :cond_2f

    .line 212
    :cond_2f
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/CardsUsedActivity;)Lcom/bzbs/bean/CardsList;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    return-object v0
.end method

.method private c()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 215
    const v0, 0x7f100141

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 216
    const v1, 0x7f100149

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 217
    const v2, 0x7f10012f

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->f:Landroid/widget/TextView;

    .line 218
    const v2, 0x7f10014e

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->h:Landroid/widget/TextView;

    .line 219
    const v2, 0x7f100154

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->g:Landroid/widget/TextView;

    .line 220
    const v2, 0x7f10015e

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->i:Landroid/widget/LinearLayout;

    .line 221
    const v2, 0x7f10014a

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->j:Landroid/widget/LinearLayout;

    .line 223
    const v2, 0x7f100155

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->k:Landroid/widget/FrameLayout;

    .line 224
    const v2, 0x7f100157

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->n:Landroid/widget/RelativeLayout;

    .line 225
    const v2, 0x7f100158

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->o:Landroid/widget/RelativeLayout;

    .line 226
    const v2, 0x7f10014d

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->l:Landroid/widget/ImageView;

    .line 228
    const v2, 0x7f100140

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 230
    const v3, 0x7f100144

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->p:Landroid/widget/TextView;

    .line 231
    const v3, 0x7f100159

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->q:Landroid/widget/LinearLayout;

    .line 232
    const v3, 0x7f10014b

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->m:Landroid/widget/ImageView;

    .line 234
    const v3, 0x7f100142

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 235
    const v3, 0x7f100161

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 236
    const v3, 0x7f100162

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v3, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v4, v4, Lcom/bzbs/bean/CardsList;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 242
    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->p:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0903ad

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v5, v5, Lcom/bzbs/bean/CardsList;->cardId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/bzbs/data/UserLogin;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090389

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 245
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 247
    const v0, 0x7f10013c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 248
    new-instance v1, Lcom/samsung/privilege/activity/CardsUsedActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CardsUsedActivity$1;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v0, 0x7f100160

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->v:Landroid/support/v7/widget/RecyclerView;

    .line 256
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->v:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 257
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->w:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 258
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->w:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->v:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bzbs/event/RecyclerItemClickListener;

    new-instance v2, Lcom/samsung/privilege/activity/CardsUsedActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CardsUsedActivity$2;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 286
    return-void
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "card/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v1, v1, Lcom/bzbs/bean/CardsList;->cardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    const-string/jumbo v1, ""

    const v2, 0x7f090282

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->d:Landroid/app/ProgressDialog;

    .line 295
    sget-object v1, Lcom/samsung/privilege/activity/CardsUsedActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadCardDetail= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 297
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 298
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 299
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 301
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CardsUsedActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CardsUsedActivity$3;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    .line 302
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 353
    return-void
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .registers 6

    .prologue
    const v4, 0x7f100162

    const v3, 0x7f100161

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v0, v0, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_37

    .line 360
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_26
    move v0, v1

    .line 369
    :goto_27
    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v2, v2, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4b

    .line 370
    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->a(IZ)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 364
    :cond_37
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 366
    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_26

    .line 373
    :cond_4b
    new-instance v0, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v1, v1, Lcom/bzbs/bean/CardsList;->historyCardsList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->x:Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;

    .line 374
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->x:Lcom/samsung/privilege/activity/CardsUsedActivity$HistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 378
    return-void
.end method

.method private f()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 433
    const-string/jumbo v0, ""

    const v1, 0x7f090282

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->d:Landroid/app/ProgressDialog;

    .line 434
    const-string/jumbo v0, ""

    .line 436
    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallet/paycode?cardId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v1, v1, Lcom/bzbs/bean/CardsList;->cardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_31} :catch_9b

    move-result-object v0

    .line 441
    sget-object v1, Lcom/samsung/privilege/activity/CardsUsedActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 443
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 444
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 445
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 446
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 447
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CardsUsedActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CardsUsedActivity$4;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    .line 448
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v1, v1, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Generate"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :goto_9a
    return-void

    .line 437
    :catch_9b
    move-exception v0

    .line 438
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_9a
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/CardsUsedActivity;)Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->u:Z

    return v0
.end method

.method private g()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 551
    const-string/jumbo v0, ""

    const v1, 0x7f090282

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->d:Landroid/app/ProgressDialog;

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallet/pay_status?code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    sget-object v1, Lcom/samsung/privilege/activity/CardsUsedActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkCodeStatus= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 555
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 556
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 557
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 558
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 559
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CardsUsedActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CardsUsedActivity$6;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    .line 560
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 638
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v1, v1, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Check Status"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->e()V

    return-void
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->k:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/samsung/privilege/activity/CardsUsedActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/samsung/privilege/activity/CardsUsedActivity;)Ljava/text/DecimalFormat;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->s:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic p(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->d()V

    return-void
.end method


# virtual methods
.method public a(F)I
    .registers 4

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 716
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected a()V
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->e:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_9

    .line 546
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->e:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 548
    :cond_9
    return-void
.end method

.method protected a(J)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x3e8

    .line 511
    new-instance v0, Lcom/samsung/privilege/activity/CardsUsedActivity$5;

    mul-long v2, p1, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/CardsUsedActivity$5;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;JJ)V

    .line 541
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->e:Landroid/os/CountDownTimer;

    .line 542
    return-void
.end method

.method public doAllHistory(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 891
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 892
    const-string/jumbo v1, "Issuer"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v2, v2, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    const-string/jumbo v1, "cardId"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v2, v2, Lcom/bzbs/bean/CardsList;->cardId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->startActivity(Landroid/content/Intent;)V

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v1, v1, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click All History"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    return-void
.end method

.method public doGenerate(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->f()V

    .line 645
    return-void
.end method

.method public doRetry(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->g()V

    .line 649
    return-void
.end method

.method public doSwapBarcode(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 743
    const v0, 0x7f10014d

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 744
    const v1, 0x7f10014e

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 746
    const-string/jumbo v2, "CODE_128"

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/samsung/privilege/util/BarcodeUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v1

    .line 747
    new-instance v2, Lcom/bzbs/zxing/QRCodeEncoder;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_68

    .line 749
    :try_start_29
    invoke-virtual {v2}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 750
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_30
    .catch Lcom/google/zxing/WriterException; {:try_start_29 .. :try_end_30} :catch_48
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_68

    .line 755
    :goto_30
    const v0, 0x7f10014f

    :try_start_33
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 756
    const v0, 0x7f100151

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 760
    :goto_47
    return-void

    .line 751
    :catch_48
    move-exception v0

    .line 752
    const-string/jumbo v1, "ZXING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(WriterException):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_67} :catch_68

    goto :goto_30

    .line 757
    :catch_68
    move-exception v0

    .line 758
    const-string/jumbo v1, "ZXING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method public doSwapQRCode(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 764
    const v0, 0x7f10014d

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 765
    const v1, 0x7f10014e

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 767
    const-string/jumbo v2, "QR_CODE"

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/samsung/privilege/util/BarcodeUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v1

    .line 768
    new-instance v2, Lcom/bzbs/zxing/QRCodeEncoder;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_68

    .line 770
    :try_start_29
    invoke-virtual {v2}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 771
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_30
    .catch Lcom/google/zxing/WriterException; {:try_start_29 .. :try_end_30} :catch_48
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_68

    .line 776
    :goto_30
    const v0, 0x7f10014f

    :try_start_33
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 777
    const v0, 0x7f100151

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 781
    :goto_47
    return-void

    .line 772
    :catch_48
    move-exception v0

    .line 773
    const-string/jumbo v1, "ZXING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(WriterException):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_67} :catch_68

    goto :goto_30

    .line 778
    :catch_68
    move-exception v0

    .line 779
    const-string/jumbo v1, "ZXING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->setContentView(I)V

    .line 94
    const v0, 0x7f05000d

    const v1, 0x7f050052

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->overridePendingTransition(II)V

    .line 96
    sput-object p0, Lcom/bzbs/data/AppSetting;->b:Lcom/samsung/privilege/activity/CardsUsedActivity;

    .line 101
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->b()V

    .line 102
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->c()V

    .line 104
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->u:Z

    if-nez v0, :cond_56

    .line 105
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/samsung/privilege/activity/CardsUsedActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cache_name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 110
    :try_start_4a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/bzbs/bean/CardsList;

    invoke-direct {v0, v1}, Lcom/bzbs/bean/CardsList;-><init>(Lorg/json/JSONObject;)V

    .line 113
    iput-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_56} :catch_94

    .line 125
    :cond_56
    :goto_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v1, v1, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v1, v1, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "View Wallet"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CardsUsedActivity;->r:Lcom/bzbs/bean/CardsList;

    iget-object v2, v2, Lcom/bzbs/bean/CardsList;->Issuer:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 119
    :catch_94
    move-exception v0

    .line 120
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_56
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/bzbs/data/AppSetting;->b:Lcom/samsung/privilege/activity/CardsUsedActivity;

    .line 160
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 132
    const v0, 0x7f050051

    const v1, 0x7f05000e

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity;->overridePendingTransition(II)V

    .line 134
    invoke-static {}, Lcom/bzbs/event/WalletEvents;->a()V

    .line 135
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 139
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 141
    sput-object p0, Lcom/bzbs/data/AppSetting;->b:Lcom/samsung/privilege/activity/CardsUsedActivity;

    .line 150
    new-instance v0, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;Lcom/samsung/privilege/activity/CardsUsedActivity$1;)V

    invoke-static {v0}, Lcom/bzbs/event/WalletEvents;->a(Lcom/bzbs/event/WalletEvents$WalletListener;)V

    .line 152
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->d()V

    .line 153
    return-void
.end method
