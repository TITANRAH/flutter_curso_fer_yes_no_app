import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    // esto llama a los colores definidos en mi tema
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Text(
              'Hola Mundo',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        _ImageBubble(),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://img.asmedia.epimg.net/resizer/3QRaOvnPPF02wLKCNCV0IjU3qbc=/1200x1200/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/4MR6VGVF4JLIXIGRWN65HMSBDM.jpg',
        width: size.width * 0.7, // toma un 70% del width
        height: 150,
        fit: BoxFit.cover, // cubre todo el espacio
        loadingBuilder: (context, child, loadingProgress) {
          // child es la imagen cuando se carga completamente

          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: const Text('Mi amor esta mandando un mensaje'),
          );
        },
      ),
    );
  }
}


// 'https://yesno.wtf/assets/yes/15-3d723ea13af91839a671d4791fc53dcc.gif',