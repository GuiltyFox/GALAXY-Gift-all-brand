.class Lcom/samsung/privilege/util/DialogWelcome$QTPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DialogWelcome.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:[Ljava/lang/Integer;


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 144
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/util/DialogWelcome$QTPagerAdapter;->a:Landroid/view/LayoutInflater;

    .line 145
    iput-object p2, p0, Lcom/samsung/privilege/util/DialogWelcome$QTPagerAdapter;->b:[Ljava/lang/Integer;

    .line 146
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogWelcome$QTPagerAdapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f040122

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 166
    const v0, 0x7f100551

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 168
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogWelcome$QTPagerAdapter;->b:[Ljava/lang/Integer;

    array-length v2, v2

    if-ge p2, v2, :cond_2c

    .line 169
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lcom/samsung/privilege/util/DialogWelcome$QTPagerAdapter;->b:[Ljava/lang/Integer;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :goto_26
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v1, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 176
    return-object v1

    .line 172
    :cond_2c
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_26
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3

    .prologue
    .line 187
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 196
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 150
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogWelcome$QTPagerAdapter;->b:[Ljava/lang/Integer;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 155
    return-void
.end method
