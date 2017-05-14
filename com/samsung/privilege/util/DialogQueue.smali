.class public Lcom/samsung/privilege/util/DialogQueue;
.super Ljava/lang/Object;
.source "DialogQueue.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/samsung/privilege/util/DialogQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogQueue;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/privilege/util/DialogQueue;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/bzbs/bean/Place;)V
    .registers 5

    .prologue
    .line 37
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_69

    .line 38
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 40
    const v1, 0x7f040128

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 42
    const v1, 0x7f100621

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/util/DialogQueue$1;

    invoke-direct {v2, v0}, Lcom/samsung/privilege/util/DialogQueue$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f100623

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/util/DialogQueue$2;

    invoke-direct {v2, v0}, Lcom/samsung/privilege/util/DialogQueue$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f10058c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/util/DialogQueue$3;

    invoke-direct {v2, v0}, Lcom/samsung/privilege/util/DialogQueue$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f100624

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/util/DialogQueue$4;

    invoke-direct {v2, v0, p0, p1}, Lcom/samsung/privilege/util/DialogQueue$4;-><init>(Landroid/app/Dialog;Landroid/content/Context;Lcom/bzbs/bean/Place;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 124
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 125
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 129
    :cond_69
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bzbs/bean/Place;Lcom/bzbs/bean/QueueItem;)V
    .registers 13

    .prologue
    const/16 v9, 0x8

    .line 132
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f1

    .line 133
    new-instance v8, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v8, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 135
    const v0, 0x7f040129

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 137
    const v0, 0x7f100625

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    const v1, 0x7f100626

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    const v2, 0x7f100627

    invoke-virtual {v8, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 140
    const v3, 0x7f100628

    invoke-virtual {v8, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 141
    const v4, 0x7f100629

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 142
    const v5, 0x7f10062a

    invoke-virtual {v8, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 143
    const v6, 0x7f10062b

    invoke-virtual {v8, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 144
    const v7, 0x7f10062c

    invoke-virtual {v8, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 146
    if-eqz p1, :cond_f2

    .line 147
    iget-object v9, p1, Lcom/bzbs/bean/Place;->name:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p1, Lcom/bzbs/bean/Place;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_6d
    iget-object v0, p2, Lcom/bzbs/bean/QueueItem;->Prefix:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p2, Lcom/bzbs/bean/QueueItem;->Queue:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090354

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget v0, p2, Lcom/bzbs/bean/QueueItem;->Seat:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p2, Lcom/bzbs/bean/QueueItem;->Queuing:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p2, Lcom/bzbs/bean/QueueItem;->WaitingMinute:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const v0, 0x7f10062d

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogQueue$5;

    invoke-direct {v1, p2, p0, v8}, Lcom/samsung/privilege/util/DialogQueue$5;-><init>(Lcom/bzbs/bean/QueueItem;Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v0, 0x7f10062e

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogQueue$6;

    invoke-direct {v1, v8}, Lcom/samsung/privilege/util/DialogQueue$6;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 211
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 212
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 214
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 216
    :cond_f1
    return-void

    .line 150
    :cond_f2
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6d
.end method
