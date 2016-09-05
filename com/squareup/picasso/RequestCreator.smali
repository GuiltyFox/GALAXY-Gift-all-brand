.class public Lcom/squareup/picasso/RequestCreator;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:Lcom/squareup/picasso/Picasso;

.field private final c:Lcom/squareup/picasso/Request$Builder;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/RequestCreator;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->f:Z

    .line 79
    iput-object v2, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    .line 80
    new-instance v0, Lcom/squareup/picasso/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/squareup/picasso/Request$Builder;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/squareup/picasso/RequestCreator;->c:Lcom/squareup/picasso/Request$Builder;

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V
    .registers 6

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->f:Z

    .line 70
    iget-boolean v0, p1, Lcom/squareup/picasso/Picasso;->m:Z

    if-eqz v0, :cond_13

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_13
    iput-object p1, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    .line 75
    new-instance v0, Lcom/squareup/picasso/Request$Builder;

    iget-object v1, p1, Lcom/squareup/picasso/Picasso;->j:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, v1}, Lcom/squareup/picasso/Request$Builder;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/squareup/picasso/RequestCreator;->c:Lcom/squareup/picasso/Request$Builder;

    .line 76
    return-void
.end method

.method private a(J)Lcom/squareup/picasso/Request;
    .registers 10

    .prologue
    .line 684
    sget-object v0, Lcom/squareup/picasso/RequestCreator;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 686
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->c:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request$Builder;->c()Lcom/squareup/picasso/Request;

    move-result-object v1

    .line 687
    iput v0, v1, Lcom/squareup/picasso/Request;->a:I

    .line 688
    iput-wide p1, v1, Lcom/squareup/picasso/Request;->b:J

    .line 690
    iget-object v2, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->l:Z

    .line 691
    if-eqz v2, :cond_27

    .line 692
    const-string/jumbo v3, "Main"

    const-string/jumbo v4, "created"

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_27
    iget-object v3, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v3, v1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/Request;)Lcom/squareup/picasso/Request;

    move-result-object v3

    .line 696
    if-eq v3, v1, :cond_56

    .line 698
    iput v0, v3, Lcom/squareup/picasso/Request;->a:I

    .line 699
    iput-wide p1, v3, Lcom/squareup/picasso/Request;->b:J

    .line 701
    if-eqz v2, :cond_56

    .line 702
    const-string/jumbo v0, "Main"

    const-string/jumbo v1, "changed"

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_56
    return-object v3
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 675
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->g:I

    if-eqz v0, :cond_13

    .line 676
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/RequestCreator;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 678
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_12
.end method


# virtual methods
.method a()Lcom/squareup/picasso/RequestCreator;
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->e:Z

    .line 206
    return-object p0
.end method

.method public a(I)Lcom/squareup/picasso/RequestCreator;
    .registers 4

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->f:Z

    if-nez v0, :cond_d

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already explicitly declared as no placeholder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_d
    if-nez p1, :cond_18

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Placeholder image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_18
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_25
    iput p1, p0, Lcom/squareup/picasso/RequestCreator;->g:I

    .line 117
    return-object p0
.end method

.method public a(II)Lcom/squareup/picasso/RequestCreator;
    .registers 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->c:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/Request$Builder;->a(II)Lcom/squareup/picasso/Request$Builder;

    .line 220
    return-object p0
.end method

.method public varargs a(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;
    .registers 7

    .prologue
    .line 328
    if-nez p1, :cond_b

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Memory policy cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_b
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->i:I

    iget v1, p1, Lcom/squareup/picasso/MemoryPolicy;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/picasso/RequestCreator;->i:I

    .line 332
    if-nez p2, :cond_1d

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Memory policy cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_1d
    array-length v0, p2

    if-lez v0, :cond_3b

    .line 336
    array-length v1, p2

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v1, :cond_3b

    aget-object v2, p2, v0

    .line 337
    if-nez v2, :cond_31

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Memory policy cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_31
    iget v3, p0, Lcom/squareup/picasso/RequestCreator;->i:I

    iget v2, v2, Lcom/squareup/picasso/MemoryPolicy;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/picasso/RequestCreator;->i:I

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 343
    :cond_3b
    return-object p0
.end method

.method public varargs a(Lcom/squareup/picasso/NetworkPolicy;[Lcom/squareup/picasso/NetworkPolicy;)Lcom/squareup/picasso/RequestCreator;
    .registers 7

    .prologue
    .line 351
    if-nez p1, :cond_b

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Network policy cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_b
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->j:I

    iget v1, p1, Lcom/squareup/picasso/NetworkPolicy;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/picasso/RequestCreator;->j:I

    .line 355
    if-nez p2, :cond_1d

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Network policy cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_1d
    array-length v0, p2

    if-lez v0, :cond_3b

    .line 359
    array-length v1, p2

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v1, :cond_3b

    aget-object v2, p2, v0

    .line 360
    if-nez v2, :cond_31

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Network policy cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_31
    iget v3, p0, Lcom/squareup/picasso/RequestCreator;->j:I

    iget v2, v2, Lcom/squareup/picasso/NetworkPolicy;->d:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/picasso/RequestCreator;->j:I

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 366
    :cond_3b
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/RequestCreator;->a(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 602
    return-void
.end method

.method public a(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V
    .registers 15

    .prologue
    .line 614
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 615
    invoke-static {}, Lcom/squareup/picasso/Utils;->a()V

    .line 617
    if-nez p1, :cond_12

    .line 618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Target must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_12
    iget-object v2, p0, Lcom/squareup/picasso/RequestCreator;->c:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request$Builder;->a()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 622
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;)V

    .line 623
    iget-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->f:Z

    if-eqz v0, :cond_2a

    .line 624
    invoke-direct {p0}, Lcom/squareup/picasso/RequestCreator;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/squareup/picasso/PicassoDrawable;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 672
    :cond_2a
    :goto_2a
    return-void

    .line 629
    :cond_2b
    iget-boolean v2, p0, Lcom/squareup/picasso/RequestCreator;->e:Z

    if-eqz v2, :cond_67

    .line 630
    iget-object v2, p0, Lcom/squareup/picasso/RequestCreator;->c:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request$Builder;->b()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fit cannot be used with resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_40
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 634
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 635
    if-eqz v2, :cond_4c

    if-nez v3, :cond_62

    .line 636
    :cond_4c
    iget-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->f:Z

    if-eqz v0, :cond_57

    .line 637
    invoke-direct {p0}, Lcom/squareup/picasso/RequestCreator;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/squareup/picasso/PicassoDrawable;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 639
    :cond_57
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    new-instance v1, Lcom/squareup/picasso/DeferredRequestCreator;

    invoke-direct {v1, p0, p1, p2}, Lcom/squareup/picasso/DeferredRequestCreator;-><init>(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;Lcom/squareup/picasso/DeferredRequestCreator;)V

    goto :goto_2a

    .line 642
    :cond_62
    iget-object v4, p0, Lcom/squareup/picasso/RequestCreator;->c:Lcom/squareup/picasso/Request$Builder;

    invoke-virtual {v4, v2, v3}, Lcom/squareup/picasso/Request$Builder;->a(II)Lcom/squareup/picasso/Request$Builder;

    .line 645
    :cond_67
    invoke-direct {p0, v0, v1}, Lcom/squareup/picasso/RequestCreator;->a(J)Lcom/squareup/picasso/Request;

    move-result-object v10

    .line 646
    invoke-static {v10}, Lcom/squareup/picasso/Utils;->a(Lcom/squareup/picasso/Request;)Ljava/lang/String;

    move-result-object v8

    .line 648
    iget v0, p0, Lcom/squareup/picasso/RequestCreator;->i:I

    invoke-static {v0}, Lcom/squareup/picasso/MemoryPolicy;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 649
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, v8}, Lcom/squareup/picasso/Picasso;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 650
    if-eqz v2, :cond_c4

    .line 651
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->a(Landroid/widget/ImageView;)V

    .line 652
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    iget-object v1, v0, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;

    sget-object v3, Lcom/squareup/picasso/Picasso$LoadedFrom;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iget-boolean v4, p0, Lcom/squareup/picasso/RequestCreator;->d:Z

    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v5, v0, Lcom/squareup/picasso/Picasso;->k:Z

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/squareup/picasso/PicassoDrawable;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    .line 653
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_bd

    .line 654
    const-string/jumbo v0, "Main"

    const-string/jumbo v1, "completed"

    invoke-virtual {v10}, Lcom/squareup/picasso/Request;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/squareup/picasso/Picasso$LoadedFrom;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_bd
    if-eqz p2, :cond_2a

    .line 657
    invoke-interface {p2}, Lcom/squareup/picasso/Callback;->a()V

    goto/16 :goto_2a

    .line 663
    :cond_c4
    iget-boolean v0, p0, Lcom/squareup/picasso/RequestCreator;->f:Z

    if-eqz v0, :cond_cf

    .line 664
    invoke-direct {p0}, Lcom/squareup/picasso/RequestCreator;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/squareup/picasso/PicassoDrawable;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_cf
    new-instance v0, Lcom/squareup/picasso/ImageViewAction;

    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    iget v4, p0, Lcom/squareup/picasso/RequestCreator;->i:I

    iget v5, p0, Lcom/squareup/picasso/RequestCreator;->j:I

    iget v6, p0, Lcom/squareup/picasso/RequestCreator;->h:I

    iget-object v7, p0, Lcom/squareup/picasso/RequestCreator;->l:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/squareup/picasso/RequestCreator;->m:Ljava/lang/Object;

    iget-boolean v11, p0, Lcom/squareup/picasso/RequestCreator;->d:Z

    move-object v2, p1

    move-object v3, v10

    move-object v10, p2

    invoke-direct/range {v0 .. v11}, Lcom/squareup/picasso/ImageViewAction;-><init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lcom/squareup/picasso/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/squareup/picasso/Callback;Z)V

    .line 671
    iget-object v1, p0, Lcom/squareup/picasso/RequestCreator;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/Action;)V

    goto/16 :goto_2a
.end method

.method public b(I)Lcom/squareup/picasso/RequestCreator;
    .registers 4

    .prologue
    .line 141
    if-nez p1, :cond_b

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Error image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_b
    iget-object v0, p0, Lcom/squareup/picasso/RequestCreator;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Error image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_18
    iput p1, p0, Lcom/squareup/picasso/RequestCreator;->h:I

    .line 148
    return-object p0
.end method
